import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import '../controllers/task_controller.dart';

class TaskRoutes {
  Handler get router {
    final router = Router();

    //  Log: Route initialized
    print('[TaskRoutes] Initializing routes...');

    //  GET: Fetch all tasks for authenticated user
    router.get('/', (Request request) {
      print('[TaskRoutes] GET / - Fetching all tasks');
      return TaskController.getTasks(request);
    });

    //  POST: Create a new task
    router.post('/', (Request request) {
      print('[TaskRoutes] POST / - Creating a new task');
      return TaskController.createTask(request);
    });

    //  PUT: Update a task by ID
    router.put('/<id|[0-9]+>', (Request request, String id) {
      print('[TaskRoutes] PUT /$id - Updating task with ID $id');
      return TaskController.updateTask(request, id);
    });

    //  DELETE: Delete a task by ID
    router.delete('/<id|[0-9]+>', (Request request, String id) {
      print('[TaskRoutes] DELETE /$id - Deleting task with ID $id');
      return TaskController.deleteTask(request, id);
    });

    //  GET: Fetch top priority tasks
    router.get('/top-priority', (Request request) {
      print('[TaskRoutes] GET /top-priority - Fetching top priority tasks');
      return TaskController.getTopPriorityTasks(request);
    });

    //  GET: Search tasks by keyword
    router.get('/search', (Request request) {
      print('[TaskRoutes] GET /search - Searching tasks');
      return TaskController.searchTasks(request);
    });

    //  GET: Get timeline view of tasks
    router.get('/timeline', (Request request) {
      print('[TaskRoutes] GET /timeline - Getting task timeline');
      return TaskController.getTaskTimeline(request);
    });

    //  GET: Recently completed tasks
    router.get('/recent-completed', (Request request) {
      print(
        '[TaskRoutes] GET /recent-completed - Fetching recently completed tasks',
      );
      return TaskController.getRecentlyCompletedTasks(request);
    });

    print('[TaskRoutes]  All routes initialized');
    return router.call;
  }
}
