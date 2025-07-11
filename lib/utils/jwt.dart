import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:dotenv/dotenv.dart';

final env = DotEnv()..load();

String generateToken(String email) {
  final jwt = JWT({'email': email});
  return jwt.sign(SecretKey(env['JWT_SECRET']!));
}
