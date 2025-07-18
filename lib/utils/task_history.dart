import 'package:backend/generated_dart_client/model.dart';

class TaskHistory {
  static final List<Task> _completed = [];

  static void push(Task task) => _completed.add(task);

  static List<Task> recent([int count = 5]) =>
      _completed.reversed.take(count).toList();
}
