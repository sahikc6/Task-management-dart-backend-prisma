import 'dart:developer' as dev;
import 'package:backend/backend.dart';
import 'package:backend/generated_dart_client/model.dart';
import 'package:orm/orm.dart';

import '../generated_dart_client/prisma.dart';
import '../utils/password_hash.dart';
import '../utils/jwt.dart';

class UserService {
  // Find a user by email
  static Future<User?> findByEmail(String email) async {
    dev.log(
      '[UserService] Searching for user with email: $email',
      name: 'UserService',
    );
    final user = await prisma.user.findUnique(
      where: UserWhereUniqueInput(email: email),
    );
    if (user != null) {
      dev.log(
        '[UserService] User found with ID: ${user.id}',
        name: 'UserService',
      );
    } else {
      dev.log(
        '[UserService] No user found for email: $email',
        name: 'UserService',
      );
    }
    return user;
  }

  // Register a new user with hashed password
  static Future<User> register(String email, String password) async {
    dev.log(
      '[UserService] Registering user with email: $email',
      name: 'UserService',
    );
    final hashed = hashPassword(password);
    final user = await prisma.user.create(
      data: PrismaUnion.$1(UserCreateInput(email: email, password: hashed)),
    );
    dev.log(
      '[UserService] User registered successfully with ID: ${user.id}',
      name: 'UserService',
    );
    return user;
  }

  // Compare input password with stored hashed password
  static bool verifyPassword(String inputPassword, String? storedHashed) {
    dev.log('[UserService] Verifying user password', name: 'UserService');
    final result = hashPassword(inputPassword) == storedHashed;
    dev.log('[UserService] Password match: $result', name: 'UserService');
    return result;
  }

  // Generate JWT token for given email
  static String generateJwt(String email) {
    dev.log(
      '[UserService] Generating JWT for email: $email',
      name: 'UserService',
    );
    final token = generateToken(email);
    dev.log('[UserService] JWT generated', name: 'UserService');
    return token;
  }

  // Update user password in DB
  static Future<User?> updatePassword(
    String email,
    String newHashedPassword,
  ) async {
    dev.log(
      '[UserService] Updating password for email: $email',
      name: 'UserService',
    );
    final user = await prisma.user.update(
      where: UserWhereUniqueInput(email: email),
      data: PrismaUnion.$1(
        UserUpdateInput(password: PrismaUnion.$1(newHashedPassword)),
      ),
    );
    dev.log(
      '[UserService] Password updated for user ID: ${user?.id}',
      name: 'UserService',
    );
    return user;
  }

  // Delete a user account by email
  static Future<void> deleteByEmail(String email) async {
    dev.log(
      '[UserService] Deleting user with email: $email',
      name: 'UserService',
    );
    await prisma.user.delete(where: UserWhereUniqueInput(email: email));
    dev.log('[UserService] User deleted successfully', name: 'UserService');
  }
}
