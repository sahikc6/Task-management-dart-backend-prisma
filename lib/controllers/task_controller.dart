import 'dart:convert';
import 'package:shelf/shelf.dart';
import 'package:orm/orm.dart';

import '../generated_dart_client/client.dart';
import '../generated_dart_client/prisma.dart';

final prisma = PrismaClient();

class TaskController {
  /// Get all tasks for a specific user
  static Future<Response> getTasks(Request request) async {
    try {
      // Extract query parameters from the URL (e.g., ?userId=1)
      final query = request.requestedUri.queryParameters;
      final userId = int.tryParse(query['userId'] ?? '');

      if (userId == null) {
        return Response(
          400,
          body: jsonEncode({'error': 'Missing or invalid userId'}),
          headers: {'Content-Type': 'application/json'},
        );
      }

      // Verify user exists
      final user = await prisma.user.findUnique(
        where: UserWhereUniqueInput(id: userId),
      );

      if (user == null) {
        return Response.notFound(jsonEncode({'error': 'User not found'}));
      }

      final tasks = await prisma.task.findMany(
        where: TaskWhereInput(userId: PrismaUnion.$2(userId)),
        include: TaskInclude(user: PrismaUnion.$1(true)),
      );

      // Convert tasks to map for JSON encoding
      final tasksList = tasks
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

      return Response.ok(
        jsonEncode(tasksList),
        headers: {'Content-Type': 'application/json'},
      );
    } catch (e) {
      return Response.internalServerError(
        body: jsonEncode({'error': 'Failed to fetch tasks: ${e.toString()}'}),
        headers: {'Content-Type': 'application/json'},
      );
    }
  }

  /// Create task for a specific user
  static Future<Response> createTask(Request request) async {
    try {
      final body = jsonDecode(await request.readAsString());
      final userId = body['userId'];

      if (userId == null || body['title'] == null) {
        return Response(
          400,
          body: jsonEncode({'error': 'Missing userId or title'}),
          headers: {'Content-Type': 'application/json'},
        );
      }

      final user = await prisma.user.findUnique(
        where: UserWhereUniqueInput(id: userId),
      );
      if (user == null) {
        return Response.notFound(jsonEncode({'error': 'User not found'}));
      }

      DateTime? dueDate;
      if (body['dueDate'] != null) {
        try {
          dueDate = DateTime.parse(body['dueDate']);
        } catch (_) {
          return Response(
            400,
            body: jsonEncode({'error': 'Invalid date format'}),
            headers: {'Content-Type': 'application/json'},
          );
        }
      }

      final task = await prisma.task.create(
        data: PrismaUnion.$1(
          TaskCreateInput(
            title: body['title'],
            description: body['description'] != null
                ? PrismaUnion.$1(body['description'])
                : null,
            dueDate: dueDate != null ? PrismaUnion.$1(dueDate) : null,
            isDone: body['isDone'] ?? false,
            completed: body['completed'] ?? false, // Required field
            user: UserCreateNestedOneWithoutTasksInput(
              connect: UserWhereUniqueInput(id: userId),
            ),
          ),
        ),
      );

      return Response.ok(
        jsonEncode({
          'id': task.id,
          'title': task.title,
          'description': task.description,
          'dueDate': task.dueDate?.toIso8601String(),
          'isDone': task.isDone,
          'completed': task.isDone,
          'userId': task.userId,
        }),
        headers: {'Content-Type': 'application/json'},
      );
    } catch (e) {
      return Response.internalServerError(
        body: jsonEncode({'error': 'Failed to create task: ${e.toString()}'}),
        headers: {'Content-Type': 'application/json'},
      );
    }
  }

  /// Update a task by ID
  static Future<Response> updateTask(Request request, String id) async {
    try {
      final taskId = int.tryParse(id);
      final body = jsonDecode(await request.readAsString());

      if (taskId == null || body['userId'] == null) {
        return Response(
          400,
          body: jsonEncode({'error': 'Invalid taskId or userId'}),
          headers: {'Content-Type': 'application/json'},
        );
      }

      final task = await prisma.task.findUnique(
        where: TaskWhereUniqueInput(id: taskId),
      );

      if (task == null || task.userId != body['userId']) {
        return Response.notFound(
          jsonEncode({'error': 'Task not found or unauthorized'}),
        );
      }

      DateTime? dueDate;
      if (body['dueDate'] != null) {
        try {
          dueDate = DateTime.parse(body['dueDate']);
        } catch (_) {
          return Response(
            400,
            body: jsonEncode({'error': 'Invalid dueDate format'}),
            headers: {'Content-Type': 'application/json'},
          );
        }
      }

      final updated = await prisma.task.update(
        where: TaskWhereUniqueInput(id: taskId),
        data: PrismaUnion.$1(
          TaskUpdateInput(
            title: body['title'] != null
                ? PrismaUnion.$1(body['title'].toString())
                : null,
            description: body['description'] != null
                ? PrismaUnion.$1(body['description'].toString())
                : null,
            dueDate: dueDate != null ? PrismaUnion.$1(dueDate) : null,
            isDone: body['isDone'] != null
                ? PrismaUnion.$1(body['isDone'] as bool)
                : null,
          ),
        ),
      );

      return Response.ok(
        jsonEncode({
          'id': updated!.id,
          'title': updated.title,
          'description': updated.description,
          'dueDate': updated.dueDate?.toIso8601String(),
          'isDone': updated.isDone,
          'userId': updated.userId,
        }),
        headers: {'Content-Type': 'application/json'},
      );
    } catch (e) {
      return Response.internalServerError(
        body: jsonEncode({'error': 'Failed to update task: ${e.toString()}'}),
        headers: {'Content-Type': 'application/json'},
      );
    }
  }

  /// Delete a task by ID
  static Future<Response> deleteTask(Request request, String id) async {
    try {
      final taskId = int.tryParse(id);
      final query = request.requestedUri.queryParameters;
      final userId = int.tryParse(query['userId'] ?? '');

      if (taskId == null || userId == null) {
        return Response(
          400,
          body: jsonEncode({'error': 'Invalid taskId or userId'}),
          headers: {'Content-Type': 'application/json'},
        );
      }

      final task = await prisma.task.findUnique(
        where: TaskWhereUniqueInput(id: taskId),
      );

      if (task == null || task.userId != userId) {
        return Response.notFound(
          jsonEncode({'error': 'Task not found or unauthorized'}),
        );
      }

      await prisma.task.delete(where: TaskWhereUniqueInput(id: taskId));

      return Response.ok(
        jsonEncode({'message': 'Task deleted successfully'}),
        headers: {'Content-Type': 'application/json'},
      );
    } catch (e) {
      return Response.internalServerError(
        body: jsonEncode({'error': 'Failed to delete task: ${e.toString()}'}),
        headers: {'Content-Type': 'application/json'},
      );
    }
  }
}
