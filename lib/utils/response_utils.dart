import 'dart:convert';
import 'package:shelf/shelf.dart';

Response jsonResponse(int code, Map<String, dynamic> data) {
  return Response(
    code,
    body: jsonEncode(data),
    headers: {'Content-Type': 'application/json'},
  );
}

Response unauthorized(String message) {
  return Response(
    401,
    body: jsonEncode({'error': message}),
    headers: {'Content-Type': 'application/json'},
  );
}

Response badRequest(String message) => jsonResponse(400, {'error': message});
Response notFound(String message) => jsonResponse(404, {'error': message});
Response serverError(String message) => jsonResponse(500, {'error': message});
