import 'dart:convert';
import 'dart:developer';
import 'package:backend/utils/rabin_karp.dart';
import 'package:backend/utils/task_history.dart';
import 'package:shelf/shelf.dart';
import '../services/task_service.dart';
import '../utils/response_utils.dart';
import '../utils/task_priority.dart';

class TaskController {
  static Future<Response> getTasks(Request request) async {
    final userEmail = request.context['userEmail'] as String?;
    if (userEmail == null) return unauthorized('User not authenticated');

    final user = await TaskService.findUserByEmail(userEmail);
    if (user == null) return notFound('User not found');

    try {
      log(' Fetching tasks for user: $userEmail');
      final tasks = await TaskService.getTasksByUserId(user.id!);

      final result = tasks
          .map(
            (task) => {
              'id': task.id,
              'title': task.title,
              'description': task.description,
              'dueDate': task.dueDate?.toIso8601String(),
              'isDone': task.isDone,
              'userId': task.userId,
              'user': task.user != null
                  ? {'id': task.user!.id, 'email': task.user!.email}
                  : null,
            },
          )
          .toList();

      return jsonResponse(200, {'tasks': result});
    } catch (e, stack) {
      log(' Error fetching tasks: $e', stackTrace: stack);
      return serverError('Failed to fetch tasks: $e');
    }
  }

  static Future<Response> createTask(Request request) async {
    final userEmail = request.context['userEmail'] as String?;
    if (userEmail == null) return unauthorized('User not authenticated');

    try {
      final body = jsonDecode(await request.readAsString());
      final String? title = body['title'];

      if (title == null || title.trim().isEmpty) {
        log(' Task creation failed: Empty title');
        return badRequest('Missing or empty title');
      }

      final user = await TaskService.findUserByEmail(userEmail);
      if (user == null) return notFound('User not found');

      log(' Creating task for user: $userEmail');
      final task = await TaskService.createTask({...body, 'userId': user.id});
      if (task == null) return serverError('Task creation failed');

      return jsonResponse(200, {
        'id': task.id,
        'title': task.title,
        'description': task.description,
        'dueDate': task.dueDate?.toIso8601String(),
        'isDone': task.isDone,
        'userId': task.userId,
      });
    } catch (e, stack) {
      log(' Error creating task: $e', stackTrace: stack);
      return serverError('Failed to create task: $e');
    }
  }

  static Future<Response> updateTask(Request request, String id) async {
    final userEmail = request.context['userEmail'] as String?;
    if (userEmail == null) return unauthorized('User not authenticated');

    final taskId = int.tryParse(id);
    if (taskId == null) return badRequest('Invalid task ID');

    try {
      final body = jsonDecode(await request.readAsString());
      final user = await TaskService.findUserByEmail(userEmail);
      if (user == null) return notFound('User not found');

      final existing = await TaskService.findTaskByIdForUser(taskId, user.id!);
      if (existing == null) return notFound('Task not found or unauthorized');

      log(' Updating task ID $taskId for $userEmail');
      final updated = await TaskService.updateTask(taskId, body);
      if (updated == null) return serverError('Task update failed');

      if (updated.isDone == true && existing.isDone != updated.isDone) {
        log(' Task $taskId marked as done – pushing to history');
        TaskHistory.push(updated);
      }

      return jsonResponse(200, {
        'id': updated.id,
        'title': updated.title,
        'description': updated.description,
        'dueDate': updated.dueDate?.toIso8601String(),
        'isDone': updated.isDone,
        'userId': updated.userId,
      });
    } catch (e, stack) {
      log(' Error updating task: $e', stackTrace: stack);
      return serverError('Failed to update task: $e');
    }
  }

  static Future<Response> deleteTask(Request request, String id) async {
    final userEmail = request.context['userEmail'] as String?;
    if (userEmail == null) return unauthorized('User not authenticated');

    final taskId = int.tryParse(id);
    if (taskId == null) return badRequest('Invalid task ID');

    final user = await TaskService.findUserByEmail(userEmail);
    if (user == null) return notFound('User not found');

    final task = await TaskService.findTaskByIdForUser(taskId, user.id!);
    if (task == null) return notFound('Task not found or unauthorized');

    try {
      log(' Deleting task $taskId for $userEmail');
      await TaskService.deleteTask(taskId);
      return jsonResponse(200, {'message': 'Task deleted successfully'});
    } catch (e, stack) {
      log(' Error deleting task: $e', stackTrace: stack);
      return serverError('Failed to delete task: $e');
    }
  }

  static Future<Response> getTopPriorityTasks(Request request) async {
    final userEmail = request.context['userEmail'] as String?;
    if (userEmail == null) return unauthorized('User not authenticated');

    final user = await TaskService.findUserByEmail(userEmail);
    if (user == null) return notFound('User not found');

    try {
      log(' Fetching top priority tasks for $userEmail');
      final tasks = await TaskService.getTasksByUserId(user.id!);
      final topTasks = getTopPriorityTasksList(tasks.toList());

      final result = topTasks
          .map(
            (task) => {
              'id': task.id,
              'title': task.title,
              'description': task.description,
              'dueDate': task.dueDate?.toIso8601String(),
              'isDone': task.isDone,
              'userId': task.userId,
            },
          )
          .toList();

      return jsonResponse(200, {'topTasks': result});
    } catch (e, stack) {
      log(' Error fetching top tasks: $e', stackTrace: stack);
      return serverError('Failed to fetch top priority tasks: $e');
    }
  }

  static Future<Response> searchTasks(Request request) async {
    final userEmail = request.context['userEmail'] as String?;
    if (userEmail == null) return unauthorized('User not authenticated');

    final query = request.url.queryParameters['keyword'] ?? '';
    if (query.trim().isEmpty) return badRequest('Search keyword is required');

    final user = await TaskService.findUserByEmail(userEmail);
    if (user == null) return notFound('User not found');

    try {
      final tasks = await TaskService.getTasksByUserId(user.id!);
      final matches = tasks
          .where((task) => task.title != null && rabinKarp(task.title!, query))
          .toList();

      log(' Found ${matches.length} tasks matching "$query"');

      return jsonResponse(200, {
        'searchResults': matches
            .map(
              (task) => {
                'id': task.id,
                'title': task.title,
                'description': task.description,
                'dueDate': task.dueDate?.toIso8601String(),
                'isDone': task.isDone,
                'userId': task.userId,
              },
            )
            .toList(),
      });
    } catch (e, stack) {
      log(' Error searching tasks: $e', stackTrace: stack);
      return serverError('Failed to search tasks: $e');
    }
  }

  static Future<Response> getTaskTimeline(Request request) async {
    final userEmail = request.context['userEmail'] as String?;
    if (userEmail == null) return unauthorized('User not authenticated');

    final user = await TaskService.findUserByEmail(userEmail);
    if (user == null) return notFound('User not found');

    try {
      final tasks = (await TaskService.getTasksByUserId(user.id!)).toList();
      tasks.sort((a, b) => a.dueDate!.compareTo(b.dueDate!));

      log('Generating timeline for $userEmail');

      return jsonResponse(200, {
        'timeline': tasks
            .map(
              (task) => {
                'id': task.id,
                'title': task.title,
                'description': task.description,
                'dueDate': task.dueDate?.toIso8601String(),
                'isDone': task.isDone,
                'userId': task.userId,
              },
            )
            .toList(),
      });
    } catch (e, stack) {
      log(' Error getting task timeline: $e', stackTrace: stack);
      return serverError('Failed to get task timeline: $e');
    }
  }

  static Future<Response> getRecentlyCompletedTasks(Request request) async {
    try {
      log(' Fetching recent completed tasks');
      final recentTasks = TaskHistory.recent();

      final result = recentTasks
          .map(
            (task) => {
              'id': task.id,
              'title': task.title,
              'description': task.description,
              'dueDate': task.dueDate?.toIso8601String(),
              'isDone': task.isDone,
              'userId': task.userId,
            },
          )
          .toList();

      return jsonResponse(200, {'recentCompleted': result});
    } catch (e, stack) {
      log(' Error getting recent completed tasks: $e', stackTrace: stack);
      return serverError('Failed to get recent tasks: $e');
    }
  }
}
