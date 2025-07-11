import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import '../controllers/task_controller.dart';

class TaskRoutes {
  Handler get router {
    final router = Router();
    router.get('/', TaskController.getTasks);
    router.post('/', TaskController.createTask);
    router.put('/<id|[0-9]+>', TaskController.updateTask);
    router.delete('/<id|[0-9]+>', TaskController.deleteTask);

    return router.call;
  }
}
