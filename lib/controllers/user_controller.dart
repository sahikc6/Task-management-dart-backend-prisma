import 'dart:convert';
import 'dart:developer';
import 'package:backend/services/user_service.dart';
import 'package:backend/utils/password_hash.dart';
import 'package:backend/utils/response_utils.dart';
import 'package:backend/utils/token_blacklist.dart';
import 'package:shelf/shelf.dart';
import '../generated_dart_client/client.dart';

final prisma = PrismaClient();

class UserController {
  ///  Register
  static Future<Response> register(Request request) async {
    try {
      final body = jsonDecode(await request.readAsString());
      final email = body['email'];
      final password = body['password'];

      log('Register request received with email: $email');

      if (email == null || password == null) {
        log('Email or password is missing');
        return badRequest('Email and Password Required');
      }

      final existingUser = await UserService.findByEmail(email);
      if (existingUser != null) {
        log('Email already exists: $email');
        return badRequest('Email already exists');
      }

      final user = await UserService.register(email, password);
      log('User registered: ${user.email}');

      return jsonResponse(200, {
        'message': 'User Registered',
        'user': {'id': user.id, 'email': user.email},
      });
    } catch (e, stack) {
      log('Registration Failed: $e', stackTrace: stack);
      return serverError('Registration Failed: ${e.toString()}');
    }
  }

  ///  Login
  static Future<Response> login(Request request) async {
    try {
      final body = jsonDecode(await request.readAsString());
      final email = body['email'];
      final password = body['password'];

      log('Login request received for: $email');

      if (email == null || password == null) {
        log('Missing email or password');
        return badRequest('Email and Password Required');
      }

      final user = await UserService.findByEmail(email);
      if (user == null ||
          !UserService.verifyPassword(password, user.password)) {
        log('Invalid credentials for $email');
        return badRequest('Invalid Credentials');
      }

      final token = UserService.generateJwt(email);
      log('Login successful for: $email');

      return jsonResponse(200, {
        'message': 'Login Successful',
        'token': token,
        'user': {'id': user.id, 'email': user.email},
      });
    } catch (e, stack) {
      log('Login Failed: $e', stackTrace: stack);
      return serverError('Login Failed: ${e.toString()}');
    }
  }

  /// Logout
  static Future<Response> logout(Request request) async {
    final authHeader = request.headers['Authorization'];
    if (authHeader == null || !authHeader.startsWith('Bearer ')) {
      log('Missing or invalid Authorization header on logout');
      return unauthorized('Missing or invalid Authorization header');
    }

    final token = authHeader.substring(7);
    blacklistedTokens.add(token);

    log('Logout successful. Token blacklisted.');
    return jsonResponse(200, {'message': 'Logout successful'});
  }

  ///  Get user by email
  static Future<Response> getUser(Request request) async {
    final email = request.url.queryParameters['email'];
    if (email == null) {
      log('Missing email for getUser');
      return badRequest('Email required');
    }

    try {
      final user = await UserService.findByEmail(email);
      if (user == null) {
        log('User not found: $email');
        return notFound('User not found');
      }

      log('User fetched: ${user.email}');
      return jsonResponse(200, {
        'user': {'id': user.id, 'email': user.email},
      });
    } catch (e, stack) {
      log('Failed to get user: $e', stackTrace: stack);
      return serverError('Failed to get user: $e');
    }
  }

  /// 🔹 Update user password
  static Future<Response> updateUser(Request request) async {
    try {
      final body = jsonDecode(await request.readAsString());
      final email = body['email'];
      final newPassword = body['password'];

      log('Password update request for: $email');

      if (email == null || newPassword == null) {
        log('Missing email or password for update');
        return badRequest('Email and new password required');
      }

      final user = await UserService.findByEmail(email);
      if (user == null) {
        log('User not found for password update: $email');
        return notFound('User not found');
      }

      final hashedPassword = hashPassword(newPassword);
      final updated = await UserService.updatePassword(email, hashedPassword);

      log('Password updated for: $email');
      return jsonResponse(200, {'message': 'Password updated successfully'});
    } catch (e, stack) {
      log('Failed to update user: $e', stackTrace: stack);
      return serverError('Failed to update user: $e');
    }
  }

  ///  Delete user by email
  static Future<Response> deleteUser(Request request) async {
    final email = request.url.queryParameters['email'];
    if (email == null) {
      log('Missing email for deleteUser');
      return badRequest('Email required');
    }

    try {
      final user = await UserService.findByEmail(email);
      if (user == null) {
        log('User not found for delete: $email');
        return notFound('User not found');
      }

      await UserService.deleteByEmail(email);
      log('User deleted: $email');
      return jsonResponse(200, {'message': 'User deleted successfully'});
    } catch (e, stack) {
      log('Failed to delete user: $e', stackTrace: stack);
      return serverError('Failed to delete user: $e');
    }
  }
}
