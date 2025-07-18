import 'package:backend/utils/token_blacklist.dart';
import 'package:shelf/shelf.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

import '../utils/jwt.dart'; // Contains getJwtSecret()
import '../utils/response_utils.dart'; // Contains jsonResponse(), unauthorized(), etc.

Middleware checkAuth() {
  return (Handler innerHandler) {
    return (Request request) async {
      final authHeader = request.headers['Authorization'];
      print(
        '[AUTH] Incoming request: ${request.method} ${request.requestedUri}',
      );
      print('[AUTH] Authorization header: $authHeader');

      if (authHeader == null || !authHeader.startsWith('Bearer ')) {
        print('[AUTH] Missing or invalid Authorization header');
        return unauthorized('Missing or invalid Authorization header');
      }

      final token = authHeader.substring(7); // Remove "Bearer "

      //  Check if token is blacklisted
      if (blacklistedTokens.contains(token)) {
        print('[AUTH] Token is blacklisted');
        return unauthorized('Token is invalidated');
      }

      try {
        final jwt = JWT.verify(token, SecretKey(getJwtSecret()));
        final email = jwt.payload['email'];
        print('[AUTH] JWT verified successfully for email: $email');

        final updatedRequest = request.change(context: {'userEmail': email});
        return await innerHandler(updatedRequest);
      } catch (e) {
        print('[AUTH] Token verification failed: $e');
        return unauthorized('Invalid or expired token');
      }
    };
  };
}
