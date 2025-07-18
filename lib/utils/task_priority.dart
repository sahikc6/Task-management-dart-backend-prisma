import 'package:backend/generated_dart_client/model.dart';
import 'package:collection/collection.dart';

/// Returns the top [count] priority tasks that are:
/// - Not completed (isDone != true)
/// - Due today or in the future
List<Task> getTopPriorityTasksList(List<Task> tasks, {int count = 5}) {
  final priorityOrder = {'high': 3, 'medium': 2, 'low': 1};
  final today = DateTime.now();

  // Extract priority based on title text
  String extractPriority(Task task) {
    final title = task.title?.toLowerCase().trim() ?? '';
    if (title.contains('high')) return 'high';
    if (title.contains('medium')) return 'medium';
    if (title.contains('low')) return 'low';
    return 'low'; // Default
  }

  // Filter tasks:
  // 1. Not done
  // 2. Due date is today or in future
  final filteredTasks = tasks.where((task) {
    final due = task.dueDate;
    if (task.isDone == true || due == null) return false;

    final dueDateOnly = DateTime(due.year, due.month, due.day);
    final todayDateOnly = DateTime.now();
    final todayOnly = DateTime(
      todayDateOnly.year,
      todayDateOnly.month,
      todayDateOnly.day,
    );

    final shouldInclude =
        dueDateOnly.isAtSameMomentAs(todayOnly) ||
        dueDateOnly.isAfter(todayOnly);

    print(
      "Task: ${task.title} | Due: $dueDateOnly | Today: $todayOnly | Include: $shouldInclude",
    );

    return shouldInclude;
  }).toList();

  final pq = PriorityQueue<Task>((a, b) {
    final p1 = priorityOrder[extractPriority(a)] ?? 0;
    final p2 = priorityOrder[extractPriority(b)] ?? 0;
    if (p1 == p2) {
      return a.dueDate?.compareTo(b.dueDate ?? DateTime.now()) ?? 0;
    }
    return p2.compareTo(p1); // Higher priority first
  });

  pq.addAll(filteredTasks);

  final topTasks = <Task>[];
  for (int i = 0; i < count && pq.isNotEmpty; i++) {
    topTasks.add(pq.removeFirst());
  }

  return topTasks;
}
