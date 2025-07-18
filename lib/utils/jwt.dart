import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:dotenv/dotenv.dart';

final env = DotEnv()..load();

String getJwtSecret() => env['JWT_SECRET']!;

String generateToken(String email) {
  final jwt = JWT({'email': email});

  // Set expiration while signing
  return jwt.sign(
    SecretKey(getJwtSecret()),
    expiresIn: Duration(hours: 1), // ⬅️ set token to expire in 1 hour
  );
}
