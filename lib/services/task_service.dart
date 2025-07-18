import 'dart:developer'; // For logging
import 'package:backend/backend.dart';
import 'package:backend/generated_dart_client/model.dart';
import 'package:orm/orm.dart';
import '../generated_dart_client/prisma.dart';

class TaskService {
  //  Find user by email
  static Future<User?> findUserByEmail(String email) async {
    log('Finding user with email: $email');
    return prisma.user.findUnique(where: UserWhereUniqueInput(email: email));
  }

  //  Get all tasks for a user with user details included
  static Future<Iterable<Task>> getTasksByUserId(int userId) async {
    log('Fetching tasks for userId: $userId');
    return await prisma.task.findMany(
      where: TaskWhereInput(userId: PrismaUnion.$2(userId)),
      include: TaskInclude(user: PrismaUnion.$1(true)),
    );
  }

  //  Find user by userId
  static Future<User?> findUser(int userId) async {
    log('Finding user with id: $userId');
    return prisma.user.findUnique(where: UserWhereUniqueInput(id: userId));
  }

  //  Create a new task
  static Future<Task?> createTask(Map<String, dynamic> body) async {
    log('Creating task with body: $body');

    DateTime? dueDate;
    if (body['dueDate'] != null) {
      dueDate = DateTime.tryParse(body['dueDate']);
      log('Parsed dueDate: $dueDate');
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
          completed: body['completed'] ?? false,
          user: UserCreateNestedOneWithoutTasksInput(
            connect: UserWhereUniqueInput(id: body['userId']),
          ),
        ),
      ),
    );

    log('Task created with ID: ${task.id}');
    return task;
  }

  //  Get a task by its ID and check if it belongs to the given user
  static Future<Task?> findTaskByIdForUser(int taskId, int userId) async {
    log('Finding task with id: $taskId for userId: $userId');
    return prisma.task.findFirst(
      where: TaskWhereInput(
        id: PrismaUnion.$2(taskId),
        userId: PrismaUnion.$2(userId),
      ),
    );
  }

  //  Update an existing task
  static Future<Task?> updateTask(int id, Map<String, dynamic> body) async {
    log('Updating task with id: $id, body: $body');

    DateTime? dueDate;
    if (body['dueDate'] != null) {
      dueDate = DateTime.tryParse(body['dueDate']);
      log('Parsed dueDate: $dueDate');
    }

    final updatedTask = await prisma.task.update(
      where: TaskWhereUniqueInput(id: id),
      data: PrismaUnion.$1(
        TaskUpdateInput(
          title: body['title'] != null ? PrismaUnion.$1(body['title']) : null,
          description: body['description'] != null
              ? PrismaUnion.$1(body['description'])
              : null,
          dueDate: dueDate != null ? PrismaUnion.$1(dueDate) : null,
          isDone: body['isDone'] != null
              ? PrismaUnion.$1(body['isDone'] as bool)
              : null,
        ),
      ),
    );

    log('Task updated: $updatedTask');
    return updatedTask;
  }

  //  Delete a task by ID
  static Future<void> deleteTask(int id) async {
    log('Deleting task with id: $id');
    await prisma.task.delete(where: TaskWhereUniqueInput(id: id));
    log('Task deleted');
  }
}
