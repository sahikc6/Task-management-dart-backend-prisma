import 'package:backend/generated_dart_client/model.dart';
import 'package:collection/collection.dart';

List<Task> getTopPriorityTasksList(List<Task> tasks, {int count = 5}) {
  final priorityOrder = {'high': 3, 'medium': 2, 'low': 1};

  String extractPriority(Task task) {
    final title = task.title?.toLowerCase().trim() ?? '';
    if (title.contains('high')) return 'high';
    if (title.contains('medium')) return 'medium';
    if (title.contains('low')) return 'low';
    return 'low'; // Default fallback
  }

  final pq = PriorityQueue<Task>((a, b) {
    final p1 = priorityOrder[extractPriority(a)] ?? 0;
    final p2 = priorityOrder[extractPriority(b)] ?? 0;
    if (p1 == p2) {
      return a.dueDate?.compareTo(b.dueDate ?? DateTime.now()) ?? 0;
    }
    return p2.compareTo(p1); // HIGH first
  });

  pq.addAll(tasks);

  final topTasks = <Task>[];
  for (int i = 0; i < count && pq.isNotEmpty; i++) {
    topTasks.add(pq.removeFirst());
  }

  return topTasks;
}
