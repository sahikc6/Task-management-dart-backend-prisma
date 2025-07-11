import 'package:backend/controllers/user_controller.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class UserRoutes {
  Handler get router {
    final router = Router();

    router.post('/register', UserController.register);
    router.post('/login', UserController.login);

    return router.call;
  }
}
