// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'model.dart' as _i1;
import 'prisma.dart' as _i2;

class Task {
  const Task({
    this.id,
    this.title,
    this.description,
    this.dueDate,
    this.isDone,
    this.userId,
    this.user,
  });

  factory Task.fromJson(Map json) => Task(
    id: json['id'],
    title: json['title'],
    description: json['description'],
    dueDate: switch (json['dueDate']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['dueDate'],
    },
    isDone: json['isDone'],
    userId: json['userId'],
    user: json['user'] is Map ? _i1.User.fromJson(json['user']) : null,
  );

  final int? id;

  final String? title;

  final String? description;

  final DateTime? dueDate;

  final bool? isDone;

  final int? userId;

  final _i1.User? user;

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'dueDate': dueDate?.toIso8601String(),
    'isDone': isDone,
    'userId': userId,
    'user': user?.toJson(),
  };
}

class User {
  const User({this.id, this.email, this.password, this.tasks, this.$count});

  factory User.fromJson(Map json) => User(
    id: json['id'],
    email: json['email'],
    password: json['password'],
    tasks: (json['tasks'] as Iterable?)?.map((json) => _i1.Task.fromJson(json)),
    $count: json['_count'] is Map
        ? _i2.UserCountOutputType.fromJson(json['_count'])
        : null,
  );

  final int? id;

  final String? email;

  final String? password;

  final Iterable<_i1.Task>? tasks;

  final _i2.UserCountOutputType? $count;

  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'password': password,
    'tasks': tasks?.map((e) => e.toJson()),
    '_count': $count?.toJson(),
  };
}
