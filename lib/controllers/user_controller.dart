import 'dart:convert';
import 'package:backend/utils/jwt.dart';
import 'package:backend/utils/password_hash.dart';
import 'package:shelf/shelf.dart';
import 'package:orm/orm.dart';
import '../generated_dart_client/client.dart';
import '../generated_dart_client/prisma.dart';

final prisma = PrismaClient();

class UserController {
  /// Get all tasks for a specific user
  static Future<Response> register(Request request) async {
    try {
      // Extract query parameters from the URL (e.g., ?userId=1)
      final body = jsonDecode(await request.readAsString());
      final email = body['email'];
      final password = body['password'];

      if (email == null || password == null) {
        return Response(
          400,
          body: jsonEncode({'error': 'Email and Passsword Required'}),
          headers: {'Content-Type': 'application/json'},
        );
      }

      // Verify user exists
      final exist = await prisma.user.findUnique(
        where: UserWhereUniqueInput(email: email),
      );

      if (exist != null) {
        return Response(
          400,
          body: jsonEncode({'error': 'Email exist'}),
          headers: {'Content-Type': 'application/json'},
        );
      }

      final hashed = hashPassword(password);

      final user = await prisma.user.create(
        data: PrismaUnion.$1(UserCreateInput(email: email, password: hashed)),
      );

      return Response.ok(
        jsonEncode({
          'message': 'User Registered',
          'user': {'id': user.id, 'email': user.email},
        }),
        headers: {'Content-Type': 'application/json'},
      );
    } catch (e) {
      return Response.internalServerError(
        body: jsonEncode({'error': 'Registration Failed:${e.toString()}'}),
        headers: {'Content-Type': 'application/json'},
      );
    }
  }

  /// user Login
  static Future<Response> login(Request request) async {
    try {
      final body = jsonDecode(await request.readAsString());
      final email = body['email'];
      final password = body['password'];

      if (email == null || password == null) {
        return Response(
          400,
          body: jsonEncode({'error': 'Email and Password Required'}),
          headers: {'Content-Type': 'application/json'},
        );
      }

      final user = await prisma.user.findUnique(
        where: UserWhereUniqueInput(email: email),
      );
      if (user == null || user.password != hashPassword(password)) {
        return Response(
          400,
          body: jsonEncode({'error': 'Invalid Credentials'}),
          headers: {'Content-Type': 'application/json'},
        );
      }

      final token = generateToken(email);

      return Response.ok(
        jsonEncode({
          'message': 'Login Successful',
          'token': token,
          'user': {'id': user.id, 'email': user.email},
        }),
        headers: {'Content-Type': 'application/json'},
      );
    } catch (e) {
      return Response.internalServerError(
        body: jsonEncode({'error': 'Login failed: ${e.toString()}'}),
        headers: {'Content-Type': 'application/json'},
      );
    }
  }
}
