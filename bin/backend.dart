import 'package:backend/middleware/auth_middleware.dart';
import 'package:backend/routes/user_routes.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_router/shelf_router.dart';
import 'package:dotenv/dotenv.dart'; // Correct import
import 'package:shelf_cors_headers/shelf_cors_headers.dart';

import 'package:backend/routes/task_routes.dart';

void main() async {
  final env = DotEnv()..load(); // Load from .env file
  final dbUrl = env['DATABASE_URL']; // Correct way to access the variable

  if (dbUrl == null) {
    print('DATABASE_URL not set in .env');
    return;
  }

  final router = Router()
    ..mount('/user/', UserRoutes().router) // public
    ..mount(
      '/tasks/',
      Pipeline()
          .addMiddleware(checkAuth()) // protect tasks
          .addHandler(TaskRoutes().router),
    );

  final handler = const Pipeline()
      .addMiddleware(logRequests())
      .addMiddleware(corsHeaders())
      .addHandler(router.call);

  final server = await io.serve(handler, 'localhost', 8080);
  print('Server running on http://${server.address.host}:${server.port}');
}
