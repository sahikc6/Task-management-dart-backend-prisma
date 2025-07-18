import 'package:backend/generated_dart_client/model.dart';

class TaskHistory {
  static final List<Task> _completed = [];

  static void push(Task task) => _completed.add(task);

  static List<Task> recent([int count = 5]) {
    final today = DateTime.now();
    final todayOnly = DateTime(today.year, today.month, today.day);

    return _completed
        .where((task) {
          final due = task.dueDate?.toLocal(); // ensure local timezone
          if (due == null) return false;

          final dueDateOnly = DateTime(due.year, due.month, due.day);
          return dueDateOnly.isAtSameMomentAs(todayOnly) ||
              dueDateOnly.isAfter(todayOnly);
        })
        .toList()
        .reversed
        .take(count)
        .toList();
  }
}
