import 'package:backend/controllers/user_controller.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class UserRoutes {
  Handler get router {
    final router = Router();

    //  Log: User routes initializing
    print('[UserRoutes] Initializing user-related routes...');

    //  POST: Register a new user
    router.post('/register', (Request request) {
      print('[UserRoutes] POST /register - Registering a new user');
      return UserController.register(request);
    });

    //  POST: Login user and return token
    router.post('/login', (Request request) {
      print('[UserRoutes] POST /login - Logging in user');
      return UserController.login(request);
    });

    //  POST: Logout user
    router.post('/logout', (Request request) {
      print('[UserRoutes] POST /logout - Logging out user');
      return UserController.logout(request);
    });

    //  GET: Get current user details
    router.get('/get', (Request request) {
      print('[UserRoutes] GET /get - Getting user details');
      return UserController.getUser(request);
    });

    //  PUT: Update user details
    router.put('/update', (Request request) {
      print('[UserRoutes] PUT /update - Updating user details');
      return UserController.updateUser(request);
    });

    //  DELETE: Delete user account
    router.delete('/delete', (Request request) {
      print('[UserRoutes] DELETE /delete - Deleting user');
      return UserController.deleteUser(request);
    });

    //  Log: All user routes initialized
    print('[UserRoutes] ✅ All routes initialized');
    return router.call;
  }
}
