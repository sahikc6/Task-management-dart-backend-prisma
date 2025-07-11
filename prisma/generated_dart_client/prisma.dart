// ignore_for_file: non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'prisma.dart' as _i2;

class UserCountOutputType {
  const UserCountOutputType({this.tasks});

  factory UserCountOutputType.fromJson(Map json) =>
      UserCountOutputType(tasks: json['tasks']);

  final int? tasks;

  Map<String, dynamic> toJson() => {'tasks': tasks};
}

class NestedIntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'not': not,
  };
}

class IntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'not': not,
  };
}

class NestedStringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.search,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final String? search;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'contains': contains,
    'startsWith': startsWith,
    'endsWith': endsWith,
    'search': search,
    'not': not,
  };
}

class StringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.search,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final String? search;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'contains': contains,
    'startsWith': startsWith,
    'endsWith': endsWith,
    'search': search,
    'not': not,
  };
}

class NestedStringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.search,
    this.not,
  });

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>
  >?
  equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final String? search;

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>
  >?
  not;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'contains': contains,
    'startsWith': startsWith,
    'endsWith': endsWith,
    'search': search,
    'not': not,
  };
}

class StringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.search,
    this.not,
  });

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>
  >?
  equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final String? search;

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>
  >?
  not;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'contains': contains,
    'startsWith': startsWith,
    'endsWith': endsWith,
    'search': search,
    'not': not,
  };
}

class NestedDateTimeNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<
    DateTime,
    _i1.PrismaUnion<_i1.Reference<DateTime>, _i1.PrismaNull>
  >?
  equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<
    DateTime,
    _i1.PrismaUnion<_i2.NestedDateTimeNullableFilter, _i1.PrismaNull>
  >?
  not;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'not': not,
  };
}

class DateTimeNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<
    DateTime,
    _i1.PrismaUnion<_i1.Reference<DateTime>, _i1.PrismaNull>
  >?
  equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<
    DateTime,
    _i1.PrismaUnion<_i2.NestedDateTimeNullableFilter, _i1.PrismaNull>
  >?
  not;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'not': not,
  };
}

class NestedBoolFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedBoolFilter({this.equals, this.not});

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolFilter>? not;

  @override
  Map<String, dynamic> toJson() => {'equals': equals, 'not': not};
}

class BoolFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolFilter({this.equals, this.not});

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolFilter>? not;

  @override
  Map<String, dynamic> toJson() => {'equals': equals, 'not': not};
}

class UserScalarRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserScalarRelationFilter({this.$is, this.isNot});

  final _i2.UserWhereInput? $is;

  final _i2.UserWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {'is': $is, 'isNot': isNot};
}

class TaskWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.title,
    this.description,
    this.dueDate,
    this.isDone,
    this.userId,
    this.user,
  });

  final _i1.PrismaUnion<_i2.TaskWhereInput, Iterable<_i2.TaskWhereInput>>? AND;

  final Iterable<_i2.TaskWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TaskWhereInput, Iterable<_i2.TaskWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? title;

  final _i1.PrismaUnion<
    _i2.StringNullableFilter,
    _i1.PrismaUnion<String, _i1.PrismaNull>
  >?
  description;

  final _i1.PrismaUnion<
    _i2.DateTimeNullableFilter,
    _i1.PrismaUnion<DateTime, _i1.PrismaNull>
  >?
  dueDate;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? isDone;

  final _i1.PrismaUnion<_i2.IntFilter, int>? userId;

  final _i1.PrismaUnion<_i2.UserScalarRelationFilter, _i2.UserWhereInput>? user;

  @override
  Map<String, dynamic> toJson() => {
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'id': id,
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
    'userId': userId,
    'user': user,
  };
}

class TaskListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskListRelationFilter({this.every, this.some, this.none});

  final _i2.TaskWhereInput? every;

  final _i2.TaskWhereInput? some;

  final _i2.TaskWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {'every': every, 'some': some, 'none': none};
}

class UserWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.email,
    this.password,
    this.tasks,
  });

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? AND;

  final Iterable<_i2.UserWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringFilter, String>? password;

  final _i2.TaskListRelationFilter? tasks;

  @override
  Map<String, dynamic> toJson() => {
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'id': id,
    'email': email,
    'password': password,
    'tasks': tasks,
  };
}

class UserWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserWhereUniqueInput({
    this.id,
    this.email,
    this.AND,
    this.OR,
    this.NOT,
    this.password,
    this.tasks,
  });

  final int? id;

  final String? email;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? AND;

  final Iterable<_i2.UserWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? password;

  final _i2.TaskListRelationFilter? tasks;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'password': password,
    'tasks': tasks,
  };
}

class TaskUserArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskUserArgs({this.select, this.include});

  final _i2.UserSelect? select;

  final _i2.UserInclude? include;

  @override
  Map<String, dynamic> toJson() => {'select': select, 'include': include};
}

class TaskInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskInclude({this.user});

  final _i1.PrismaUnion<bool, _i2.TaskUserArgs>? user;

  @override
  Map<String, dynamic> toJson() => {'user': user};
}

enum SortOrder implements _i1.PrismaEnum {
  asc._('asc'),
  desc._('desc');

  const SortOrder._(this.name);

  @override
  final String name;
}

enum NullsOrder implements _i1.PrismaEnum {
  first._('first'),
  last._('last');

  const NullsOrder._(this.name);

  @override
  final String name;
}

class SortOrderInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const SortOrderInput({required this.sort, this.nulls});

  final _i2.SortOrder sort;

  final _i2.NullsOrder? nulls;

  @override
  Map<String, dynamic> toJson() => {'sort': sort, 'nulls': nulls};
}

class TaskOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

enum UserOrderByRelevanceFieldEnum implements _i1.PrismaEnum {
  email._('email'),
  password._('password');

  const UserOrderByRelevanceFieldEnum._(this.name);

  @override
  final String name;
}

class UserOrderByRelevanceInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserOrderByRelevanceInput({
    required this.fields,
    required this.sort,
    required this.search,
  });

  final _i1.PrismaUnion<
    _i2.UserOrderByRelevanceFieldEnum,
    Iterable<_i2.UserOrderByRelevanceFieldEnum>
  >
  fields;

  final _i2.SortOrder sort;

  final String search;

  @override
  Map<String, dynamic> toJson() => {
    'fields': fields,
    'sort': sort,
    'search': search,
  };
}

class UserOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserOrderByWithRelationInput({
    this.id,
    this.email,
    this.password,
    this.tasks,
    this.$relevance,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? password;

  final _i2.TaskOrderByRelationAggregateInput? tasks;

  final _i2.UserOrderByRelevanceInput? $relevance;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'password': password,
    'tasks': tasks,
    '_relevance': $relevance,
  };
}

enum TaskOrderByRelevanceFieldEnum implements _i1.PrismaEnum {
  title._('title'),
  description._('description');

  const TaskOrderByRelevanceFieldEnum._(this.name);

  @override
  final String name;
}

class TaskOrderByRelevanceInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskOrderByRelevanceInput({
    required this.fields,
    required this.sort,
    required this.search,
  });

  final _i1.PrismaUnion<
    _i2.TaskOrderByRelevanceFieldEnum,
    Iterable<_i2.TaskOrderByRelevanceFieldEnum>
  >
  fields;

  final _i2.SortOrder sort;

  final String search;

  @override
  Map<String, dynamic> toJson() => {
    'fields': fields,
    'sort': sort,
    'search': search,
  };
}

class TaskOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskOrderByWithRelationInput({
    this.id,
    this.title,
    this.description,
    this.dueDate,
    this.isDone,
    this.userId,
    this.user,
    this.$relevance,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? title;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? description;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? dueDate;

  final _i2.SortOrder? isDone;

  final _i2.SortOrder? userId;

  final _i2.UserOrderByWithRelationInput? user;

  final _i2.TaskOrderByRelevanceInput? $relevance;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
    'userId': userId,
    'user': user,
    '_relevance': $relevance,
  };
}

class TaskWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.title,
    this.description,
    this.dueDate,
    this.isDone,
    this.userId,
    this.user,
  });

  final int? id;

  final _i1.PrismaUnion<_i2.TaskWhereInput, Iterable<_i2.TaskWhereInput>>? AND;

  final Iterable<_i2.TaskWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TaskWhereInput, Iterable<_i2.TaskWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? title;

  final _i1.PrismaUnion<
    _i2.StringNullableFilter,
    _i1.PrismaUnion<String, _i1.PrismaNull>
  >?
  description;

  final _i1.PrismaUnion<
    _i2.DateTimeNullableFilter,
    _i1.PrismaUnion<DateTime, _i1.PrismaNull>
  >?
  dueDate;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? isDone;

  final _i1.PrismaUnion<_i2.IntFilter, int>? userId;

  final _i1.PrismaUnion<_i2.UserScalarRelationFilter, _i2.UserWhereInput>? user;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
    'userId': userId,
    'user': user,
  };
}

enum TaskScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'Task'),
  title<String>('title', 'Task'),
  description<String>('description', 'Task'),
  dueDate<DateTime>('dueDate', 'Task'),
  isDone<bool>('isDone', 'Task'),
  userId<int>('userId', 'Task');

  const TaskScalar(this.name, this.model);

  @override
  final String name;

  @override
  final String model;
}

class UserTasksArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserTasksArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.TaskWhereInput? where;

  final _i1.PrismaUnion<
    Iterable<_i2.TaskOrderByWithRelationInput>,
    _i2.TaskOrderByWithRelationInput
  >?
  orderBy;

  final _i2.TaskWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.TaskScalar, Iterable<_i2.TaskScalar>>? distinct;

  final _i2.TaskSelect? select;

  final _i2.TaskInclude? include;

  @override
  Map<String, dynamic> toJson() => {
    'where': where,
    'orderBy': orderBy,
    'cursor': cursor,
    'take': take,
    'skip': skip,
    'distinct': distinct,
    'select': select,
    'include': include,
  };
}

class UserCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountOutputTypeSelect({this.tasks});

  final bool? tasks;

  @override
  Map<String, dynamic> toJson() => {'tasks': tasks};
}

class UserCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountArgs({this.select});

  final _i2.UserCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserInclude({this.tasks, this.$count});

  final _i1.PrismaUnion<bool, _i2.UserTasksArgs>? tasks;

  final _i1.PrismaUnion<bool, _i2.UserCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {'tasks': tasks, '_count': $count};
}

class TaskSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskSelect({
    this.id,
    this.title,
    this.description,
    this.dueDate,
    this.isDone,
    this.userId,
    this.user,
  });

  final bool? id;

  final bool? title;

  final bool? description;

  final bool? dueDate;

  final bool? isDone;

  final bool? userId;

  final _i1.PrismaUnion<bool, _i2.TaskUserArgs>? user;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
    'userId': userId,
    'user': user,
  };
}

class UserSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserSelect({
    this.id,
    this.email,
    this.password,
    this.tasks,
    this.$count,
  });

  final bool? id;

  final bool? email;

  final bool? password;

  final _i1.PrismaUnion<bool, _i2.UserTasksArgs>? tasks;

  final _i1.PrismaUnion<bool, _i2.UserCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'password': password,
    'tasks': tasks,
    '_count': $count,
  };
}

enum UserScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'User'),
  email<String>('email', 'User'),
  password<String>('password', 'User');

  const UserScalar(this.name, this.model);

  @override
  final String name;

  @override
  final String model;
}

class TaskCreateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskCreateWithoutUserInput({
    required this.title,
    this.description,
    this.dueDate,
    this.isDone,
  });

  final String title;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? dueDate;

  final bool? isDone;

  @override
  Map<String, dynamic> toJson() => {
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
  };
}

class TaskUncheckedCreateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskUncheckedCreateWithoutUserInput({
    this.id,
    required this.title,
    this.description,
    this.dueDate,
    this.isDone,
  });

  final int? id;

  final String title;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? dueDate;

  final bool? isDone;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
  };
}

class TaskCreateOrConnectWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskCreateOrConnectWithoutUserInput({
    required this.where,
    required this.create,
  });

  final _i2.TaskWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.TaskCreateWithoutUserInput,
    _i2.TaskUncheckedCreateWithoutUserInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'create': create};
}

class TaskCreateManyUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskCreateManyUserInput({
    this.id,
    required this.title,
    this.description,
    this.dueDate,
    this.isDone,
  });

  final int? id;

  final String title;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? dueDate;

  final bool? isDone;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
  };
}

class TaskCreateManyUserInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskCreateManyUserInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<
    _i2.TaskCreateManyUserInput,
    Iterable<_i2.TaskCreateManyUserInput>
  >
  data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
    'data': data,
    'skipDuplicates': skipDuplicates,
  };
}

class TaskCreateNestedManyWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskCreateNestedManyWithoutUserInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.TaskCreateWithoutUserInput,
    _i1.PrismaUnion<
      Iterable<_i2.TaskCreateWithoutUserInput>,
      _i1.PrismaUnion<
        _i2.TaskUncheckedCreateWithoutUserInput,
        Iterable<_i2.TaskUncheckedCreateWithoutUserInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.TaskCreateOrConnectWithoutUserInput,
    Iterable<_i2.TaskCreateOrConnectWithoutUserInput>
  >?
  connectOrCreate;

  final _i2.TaskCreateManyUserInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.TaskWhereUniqueInput,
    Iterable<_i2.TaskWhereUniqueInput>
  >?
  connect;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'createMany': createMany,
    'connect': connect,
  };
}

class UserCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateInput({
    required this.email,
    required this.password,
    this.tasks,
  });

  final String email;

  final String password;

  final _i2.TaskCreateNestedManyWithoutUserInput? tasks;

  @override
  Map<String, dynamic> toJson() => {
    'email': email,
    'password': password,
    'tasks': tasks,
  };
}

class TaskUncheckedCreateNestedManyWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskUncheckedCreateNestedManyWithoutUserInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.TaskCreateWithoutUserInput,
    _i1.PrismaUnion<
      Iterable<_i2.TaskCreateWithoutUserInput>,
      _i1.PrismaUnion<
        _i2.TaskUncheckedCreateWithoutUserInput,
        Iterable<_i2.TaskUncheckedCreateWithoutUserInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.TaskCreateOrConnectWithoutUserInput,
    Iterable<_i2.TaskCreateOrConnectWithoutUserInput>
  >?
  connectOrCreate;

  final _i2.TaskCreateManyUserInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.TaskWhereUniqueInput,
    Iterable<_i2.TaskWhereUniqueInput>
  >?
  connect;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'createMany': createMany,
    'connect': connect,
  };
}

class UserUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateInput({
    this.id,
    required this.email,
    required this.password,
    this.tasks,
  });

  final int? id;

  final String email;

  final String password;

  final _i2.TaskUncheckedCreateNestedManyWithoutUserInput? tasks;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'password': password,
    'tasks': tasks,
  };
}

class AffectedRowsOutput {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map json) =>
      AffectedRowsOutput(count: json['count']);

  final int? count;

  Map<String, dynamic> toJson() => {'count': count};
}

class UserCreateManyInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateManyInput({
    this.id,
    required this.email,
    required this.password,
  });

  final int? id;

  final String email;

  final String password;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'password': password,
  };
}

class StringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFieldUpdateOperationsInput({this.set});

  final String? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class NullableStringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableStringFieldUpdateOperationsInput({this.set});

  final _i1.PrismaUnion<String, _i1.PrismaNull>? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class NullableDateTimeFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableDateTimeFieldUpdateOperationsInput({this.set});

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class BoolFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolFieldUpdateOperationsInput({this.set});

  final bool? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class TaskUpdateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskUpdateWithoutUserInput({
    this.title,
    this.description,
    this.dueDate,
    this.isDone,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<
      _i2.NullableStringFieldUpdateOperationsInput,
      _i1.PrismaNull
    >
  >?
  description;

  final _i1.PrismaUnion<
    DateTime,
    _i1.PrismaUnion<
      _i2.NullableDateTimeFieldUpdateOperationsInput,
      _i1.PrismaNull
    >
  >?
  dueDate;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isDone;

  @override
  Map<String, dynamic> toJson() => {
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
  };
}

class IntFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => {
    'set': set,
    'increment': increment,
    'decrement': decrement,
    'multiply': multiply,
    'divide': divide,
  };
}

class TaskUncheckedUpdateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskUncheckedUpdateWithoutUserInput({
    this.id,
    this.title,
    this.description,
    this.dueDate,
    this.isDone,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<
      _i2.NullableStringFieldUpdateOperationsInput,
      _i1.PrismaNull
    >
  >?
  description;

  final _i1.PrismaUnion<
    DateTime,
    _i1.PrismaUnion<
      _i2.NullableDateTimeFieldUpdateOperationsInput,
      _i1.PrismaNull
    >
  >?
  dueDate;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isDone;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
  };
}

class TaskUpsertWithWhereUniqueWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskUpsertWithWhereUniqueWithoutUserInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.TaskWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.TaskUpdateWithoutUserInput,
    _i2.TaskUncheckedUpdateWithoutUserInput
  >
  update;

  final _i1.PrismaUnion<
    _i2.TaskCreateWithoutUserInput,
    _i2.TaskUncheckedCreateWithoutUserInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {
    'where': where,
    'update': update,
    'create': create,
  };
}

class TaskUpdateWithWhereUniqueWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskUpdateWithWhereUniqueWithoutUserInput({
    required this.where,
    required this.data,
  });

  final _i2.TaskWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.TaskUpdateWithoutUserInput,
    _i2.TaskUncheckedUpdateWithoutUserInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class TaskScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.title,
    this.description,
    this.dueDate,
    this.isDone,
    this.userId,
  });

  final _i1.PrismaUnion<
    _i2.TaskScalarWhereInput,
    Iterable<_i2.TaskScalarWhereInput>
  >?
  AND;

  final Iterable<_i2.TaskScalarWhereInput>? OR;

  final _i1.PrismaUnion<
    _i2.TaskScalarWhereInput,
    Iterable<_i2.TaskScalarWhereInput>
  >?
  NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? title;

  final _i1.PrismaUnion<
    _i2.StringNullableFilter,
    _i1.PrismaUnion<String, _i1.PrismaNull>
  >?
  description;

  final _i1.PrismaUnion<
    _i2.DateTimeNullableFilter,
    _i1.PrismaUnion<DateTime, _i1.PrismaNull>
  >?
  dueDate;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? isDone;

  final _i1.PrismaUnion<_i2.IntFilter, int>? userId;

  @override
  Map<String, dynamic> toJson() => {
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'id': id,
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
    'userId': userId,
  };
}

class TaskUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskUpdateManyMutationInput({
    this.title,
    this.description,
    this.dueDate,
    this.isDone,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<
      _i2.NullableStringFieldUpdateOperationsInput,
      _i1.PrismaNull
    >
  >?
  description;

  final _i1.PrismaUnion<
    DateTime,
    _i1.PrismaUnion<
      _i2.NullableDateTimeFieldUpdateOperationsInput,
      _i1.PrismaNull
    >
  >?
  dueDate;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isDone;

  @override
  Map<String, dynamic> toJson() => {
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
  };
}

class TaskUncheckedUpdateManyWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskUncheckedUpdateManyWithoutUserInput({
    this.id,
    this.title,
    this.description,
    this.dueDate,
    this.isDone,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<
      _i2.NullableStringFieldUpdateOperationsInput,
      _i1.PrismaNull
    >
  >?
  description;

  final _i1.PrismaUnion<
    DateTime,
    _i1.PrismaUnion<
      _i2.NullableDateTimeFieldUpdateOperationsInput,
      _i1.PrismaNull
    >
  >?
  dueDate;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isDone;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
  };
}

class TaskUpdateManyWithWhereWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskUpdateManyWithWhereWithoutUserInput({
    required this.where,
    required this.data,
  });

  final _i2.TaskScalarWhereInput where;

  final _i1.PrismaUnion<
    _i2.TaskUpdateManyMutationInput,
    _i2.TaskUncheckedUpdateManyWithoutUserInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class TaskUpdateManyWithoutUserNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskUpdateManyWithoutUserNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
    _i2.TaskCreateWithoutUserInput,
    _i1.PrismaUnion<
      Iterable<_i2.TaskCreateWithoutUserInput>,
      _i1.PrismaUnion<
        _i2.TaskUncheckedCreateWithoutUserInput,
        Iterable<_i2.TaskUncheckedCreateWithoutUserInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.TaskCreateOrConnectWithoutUserInput,
    Iterable<_i2.TaskCreateOrConnectWithoutUserInput>
  >?
  connectOrCreate;

  final _i1.PrismaUnion<
    _i2.TaskUpsertWithWhereUniqueWithoutUserInput,
    Iterable<_i2.TaskUpsertWithWhereUniqueWithoutUserInput>
  >?
  upsert;

  final _i2.TaskCreateManyUserInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.TaskWhereUniqueInput,
    Iterable<_i2.TaskWhereUniqueInput>
  >?
  set;

  final _i1.PrismaUnion<
    _i2.TaskWhereUniqueInput,
    Iterable<_i2.TaskWhereUniqueInput>
  >?
  disconnect;

  final _i1.PrismaUnion<
    _i2.TaskWhereUniqueInput,
    Iterable<_i2.TaskWhereUniqueInput>
  >?
  delete;

  final _i1.PrismaUnion<
    _i2.TaskWhereUniqueInput,
    Iterable<_i2.TaskWhereUniqueInput>
  >?
  connect;

  final _i1.PrismaUnion<
    _i2.TaskUpdateWithWhereUniqueWithoutUserInput,
    Iterable<_i2.TaskUpdateWithWhereUniqueWithoutUserInput>
  >?
  update;

  final _i1.PrismaUnion<
    _i2.TaskUpdateManyWithWhereWithoutUserInput,
    Iterable<_i2.TaskUpdateManyWithWhereWithoutUserInput>
  >?
  updateMany;

  final _i1.PrismaUnion<
    _i2.TaskScalarWhereInput,
    Iterable<_i2.TaskScalarWhereInput>
  >?
  deleteMany;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'upsert': upsert,
    'createMany': createMany,
    'set': set,
    'disconnect': disconnect,
    'delete': delete,
    'connect': connect,
    'update': update,
    'updateMany': updateMany,
    'deleteMany': deleteMany,
  };
}

class UserUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateInput({this.email, this.password, this.tasks});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i2.TaskUpdateManyWithoutUserNestedInput? tasks;

  @override
  Map<String, dynamic> toJson() => {
    'email': email,
    'password': password,
    'tasks': tasks,
  };
}

class TaskUncheckedUpdateManyWithoutUserNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskUncheckedUpdateManyWithoutUserNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
    _i2.TaskCreateWithoutUserInput,
    _i1.PrismaUnion<
      Iterable<_i2.TaskCreateWithoutUserInput>,
      _i1.PrismaUnion<
        _i2.TaskUncheckedCreateWithoutUserInput,
        Iterable<_i2.TaskUncheckedCreateWithoutUserInput>
      >
    >
  >?
  create;

  final _i1.PrismaUnion<
    _i2.TaskCreateOrConnectWithoutUserInput,
    Iterable<_i2.TaskCreateOrConnectWithoutUserInput>
  >?
  connectOrCreate;

  final _i1.PrismaUnion<
    _i2.TaskUpsertWithWhereUniqueWithoutUserInput,
    Iterable<_i2.TaskUpsertWithWhereUniqueWithoutUserInput>
  >?
  upsert;

  final _i2.TaskCreateManyUserInputEnvelope? createMany;

  final _i1.PrismaUnion<
    _i2.TaskWhereUniqueInput,
    Iterable<_i2.TaskWhereUniqueInput>
  >?
  set;

  final _i1.PrismaUnion<
    _i2.TaskWhereUniqueInput,
    Iterable<_i2.TaskWhereUniqueInput>
  >?
  disconnect;

  final _i1.PrismaUnion<
    _i2.TaskWhereUniqueInput,
    Iterable<_i2.TaskWhereUniqueInput>
  >?
  delete;

  final _i1.PrismaUnion<
    _i2.TaskWhereUniqueInput,
    Iterable<_i2.TaskWhereUniqueInput>
  >?
  connect;

  final _i1.PrismaUnion<
    _i2.TaskUpdateWithWhereUniqueWithoutUserInput,
    Iterable<_i2.TaskUpdateWithWhereUniqueWithoutUserInput>
  >?
  update;

  final _i1.PrismaUnion<
    _i2.TaskUpdateManyWithWhereWithoutUserInput,
    Iterable<_i2.TaskUpdateManyWithWhereWithoutUserInput>
  >?
  updateMany;

  final _i1.PrismaUnion<
    _i2.TaskScalarWhereInput,
    Iterable<_i2.TaskScalarWhereInput>
  >?
  deleteMany;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'upsert': upsert,
    'createMany': createMany,
    'set': set,
    'disconnect': disconnect,
    'delete': delete,
    'connect': connect,
    'update': update,
    'updateMany': updateMany,
    'deleteMany': deleteMany,
  };
}

class UserUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateInput({
    this.id,
    this.email,
    this.password,
    this.tasks,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i2.TaskUncheckedUpdateManyWithoutUserNestedInput? tasks;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'password': password,
    'tasks': tasks,
  };
}

class UserUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateManyMutationInput({this.email, this.password});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  @override
  Map<String, dynamic> toJson() => {'email': email, 'password': password};
}

class UserUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateManyInput({this.id, this.email, this.password});

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'password': password,
  };
}

class UserCountAggregateOutputType {
  const UserCountAggregateOutputType({
    this.id,
    this.email,
    this.password,
    this.$all,
  });

  factory UserCountAggregateOutputType.fromJson(Map json) =>
      UserCountAggregateOutputType(
        id: json['id'],
        email: json['email'],
        password: json['password'],
        $all: json['_all'],
      );

  final int? id;

  final int? email;

  final int? password;

  final int? $all;

  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'password': password,
    '_all': $all,
  };
}

class UserAvgAggregateOutputType {
  const UserAvgAggregateOutputType({this.id});

  factory UserAvgAggregateOutputType.fromJson(Map json) =>
      UserAvgAggregateOutputType(id: json['id']);

  final double? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class UserSumAggregateOutputType {
  const UserSumAggregateOutputType({this.id});

  factory UserSumAggregateOutputType.fromJson(Map json) =>
      UserSumAggregateOutputType(id: json['id']);

  final int? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class UserMinAggregateOutputType {
  const UserMinAggregateOutputType({this.id, this.email, this.password});

  factory UserMinAggregateOutputType.fromJson(Map json) =>
      UserMinAggregateOutputType(
        id: json['id'],
        email: json['email'],
        password: json['password'],
      );

  final int? id;

  final String? email;

  final String? password;

  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'password': password,
  };
}

class UserMaxAggregateOutputType {
  const UserMaxAggregateOutputType({this.id, this.email, this.password});

  factory UserMaxAggregateOutputType.fromJson(Map json) =>
      UserMaxAggregateOutputType(
        id: json['id'],
        email: json['email'],
        password: json['password'],
      );

  final int? id;

  final String? email;

  final String? password;

  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'password': password,
  };
}

class UserGroupByOutputType {
  const UserGroupByOutputType({
    this.id,
    this.email,
    this.password,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory UserGroupByOutputType.fromJson(Map json) => UserGroupByOutputType(
    id: json['id'],
    email: json['email'],
    password: json['password'],
    $count: json['_count'] is Map
        ? _i2.UserCountAggregateOutputType.fromJson(json['_count'])
        : null,
    $avg: json['_avg'] is Map
        ? _i2.UserAvgAggregateOutputType.fromJson(json['_avg'])
        : null,
    $sum: json['_sum'] is Map
        ? _i2.UserSumAggregateOutputType.fromJson(json['_sum'])
        : null,
    $min: json['_min'] is Map
        ? _i2.UserMinAggregateOutputType.fromJson(json['_min'])
        : null,
    $max: json['_max'] is Map
        ? _i2.UserMaxAggregateOutputType.fromJson(json['_max'])
        : null,
  );

  final int? id;

  final String? email;

  final String? password;

  final _i2.UserCountAggregateOutputType? $count;

  final _i2.UserAvgAggregateOutputType? $avg;

  final _i2.UserSumAggregateOutputType? $sum;

  final _i2.UserMinAggregateOutputType? $min;

  final _i2.UserMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'password': password,
    '_count': $count?.toJson(),
    '_avg': $avg?.toJson(),
    '_sum': $sum?.toJson(),
    '_min': $min?.toJson(),
    '_max': $max?.toJson(),
  };
}

class UserCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountOrderByAggregateInput({this.id, this.email, this.password});

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? password;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'password': password,
  };
}

class UserAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserAvgOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class UserMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMaxOrderByAggregateInput({this.id, this.email, this.password});

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? password;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'password': password,
  };
}

class UserMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMinOrderByAggregateInput({this.id, this.email, this.password});

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? password;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'password': password,
  };
}

class UserSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserSumOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class UserOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserOrderByWithAggregationInput({
    this.id,
    this.email,
    this.password,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? password;

  final _i2.UserCountOrderByAggregateInput? $count;

  final _i2.UserAvgOrderByAggregateInput? $avg;

  final _i2.UserMaxOrderByAggregateInput? $max;

  final _i2.UserMinOrderByAggregateInput? $min;

  final _i2.UserSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'password': password,
    '_count': $count,
    '_avg': $avg,
    '_max': $max,
    '_min': $min,
    '_sum': $sum,
  };
}

class NestedFloatFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<double, _i1.Reference<double>>? equals;

  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lte;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gte;

  final _i1.PrismaUnion<double, _i2.NestedFloatFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'not': not,
  };
}

class NestedIntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'not': not,
    '_count': $count,
    '_avg': $avg,
    '_sum': $sum,
    '_min': $min,
    '_max': $max,
  };
}

class IntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'not': not,
    '_count': $count,
    '_avg': $avg,
    '_sum': $sum,
    '_min': $min,
    '_max': $max,
  };
}

class NestedStringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.search,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final String? search;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'contains': contains,
    'startsWith': startsWith,
    'endsWith': endsWith,
    'search': search,
    'not': not,
    '_count': $count,
    '_min': $min,
    '_max': $max,
  };
}

class StringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.search,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final String? search;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'contains': contains,
    'startsWith': startsWith,
    'endsWith': endsWith,
    'search': search,
    'not': not,
    '_count': $count,
    '_min': $min,
    '_max': $max,
  };
}

class UserScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.email,
    this.password,
  });

  final _i1.PrismaUnion<
    _i2.UserScalarWhereWithAggregatesInput,
    Iterable<_i2.UserScalarWhereWithAggregatesInput>
  >?
  AND;

  final Iterable<_i2.UserScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<
    _i2.UserScalarWhereWithAggregatesInput,
    Iterable<_i2.UserScalarWhereWithAggregatesInput>
  >?
  NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? password;

  @override
  Map<String, dynamic> toJson() => {
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'id': id,
    'email': email,
    'password': password,
  };
}

class UserCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountAggregateOutputTypeSelect({
    this.id,
    this.email,
    this.password,
    this.$all,
  });

  final bool? id;

  final bool? email;

  final bool? password;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'password': password,
    '_all': $all,
  };
}

class UserGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeCountArgs({this.select});

  final _i2.UserCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserAvgAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class UserGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeAvgArgs({this.select});

  final _i2.UserAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserSumAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class UserGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeSumArgs({this.select});

  final _i2.UserSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMinAggregateOutputTypeSelect({this.id, this.email, this.password});

  final bool? id;

  final bool? email;

  final bool? password;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'password': password,
  };
}

class UserGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeMinArgs({this.select});

  final _i2.UserMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMaxAggregateOutputTypeSelect({this.id, this.email, this.password});

  final bool? id;

  final bool? email;

  final bool? password;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'password': password,
  };
}

class UserGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeMaxArgs({this.select});

  final _i2.UserMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeSelect({
    this.id,
    this.email,
    this.password,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? email;

  final bool? password;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'password': password,
    '_count': $count,
    '_avg': $avg,
    '_sum': $sum,
    '_min': $min,
    '_max': $max,
  };
}

class AggregateUser {
  const AggregateUser({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateUser.fromJson(Map json) => AggregateUser(
    $count: json['_count'] is Map
        ? _i2.UserCountAggregateOutputType.fromJson(json['_count'])
        : null,
    $avg: json['_avg'] is Map
        ? _i2.UserAvgAggregateOutputType.fromJson(json['_avg'])
        : null,
    $sum: json['_sum'] is Map
        ? _i2.UserSumAggregateOutputType.fromJson(json['_sum'])
        : null,
    $min: json['_min'] is Map
        ? _i2.UserMinAggregateOutputType.fromJson(json['_min'])
        : null,
    $max: json['_max'] is Map
        ? _i2.UserMaxAggregateOutputType.fromJson(json['_max'])
        : null,
  );

  final _i2.UserCountAggregateOutputType? $count;

  final _i2.UserAvgAggregateOutputType? $avg;

  final _i2.UserSumAggregateOutputType? $sum;

  final _i2.UserMinAggregateOutputType? $min;

  final _i2.UserMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
    '_count': $count?.toJson(),
    '_avg': $avg?.toJson(),
    '_sum': $sum?.toJson(),
    '_min': $min?.toJson(),
    '_max': $max?.toJson(),
  };
}

class AggregateUserCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserCountArgs({this.select});

  final _i2.UserCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserAvgArgs({this.select});

  final _i2.UserAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserSumArgs({this.select});

  final _i2.UserSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserMinArgs({this.select});

  final _i2.UserMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserMaxArgs({this.select});

  final _i2.UserMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateUserCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateUserAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateUserSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateUserMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateUserMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
    '_count': $count,
    '_avg': $avg,
    '_sum': $sum,
    '_min': $min,
    '_max': $max,
  };
}

class UserCreateWithoutTasksInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateWithoutTasksInput({
    required this.email,
    required this.password,
  });

  final String email;

  final String password;

  @override
  Map<String, dynamic> toJson() => {'email': email, 'password': password};
}

class UserUncheckedCreateWithoutTasksInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateWithoutTasksInput({
    this.id,
    required this.email,
    required this.password,
  });

  final int? id;

  final String email;

  final String password;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'password': password,
  };
}

class UserCreateOrConnectWithoutTasksInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateOrConnectWithoutTasksInput({
    required this.where,
    required this.create,
  });

  final _i2.UserWhereUniqueInput where;

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutTasksInput,
    _i2.UserUncheckedCreateWithoutTasksInput
  >
  create;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'create': create};
}

class UserCreateNestedOneWithoutTasksInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateNestedOneWithoutTasksInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutTasksInput,
    _i2.UserUncheckedCreateWithoutTasksInput
  >?
  create;

  final _i2.UserCreateOrConnectWithoutTasksInput? connectOrCreate;

  final _i2.UserWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'connect': connect,
  };
}

class TaskCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskCreateInput({
    required this.title,
    this.description,
    this.dueDate,
    this.isDone,
    required this.user,
  });

  final String title;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? dueDate;

  final bool? isDone;

  final _i2.UserCreateNestedOneWithoutTasksInput user;

  @override
  Map<String, dynamic> toJson() => {
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
    'user': user,
  };
}

class TaskUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskUncheckedCreateInput({
    this.id,
    required this.title,
    this.description,
    this.dueDate,
    this.isDone,
    required this.userId,
  });

  final int? id;

  final String title;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? dueDate;

  final bool? isDone;

  final int userId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
    'userId': userId,
  };
}

class TaskCreateManyInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskCreateManyInput({
    this.id,
    required this.title,
    this.description,
    this.dueDate,
    this.isDone,
    required this.userId,
  });

  final int? id;

  final String title;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? dueDate;

  final bool? isDone;

  final int userId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
    'userId': userId,
  };
}

class UserUpdateWithoutTasksInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateWithoutTasksInput({this.email, this.password});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  @override
  Map<String, dynamic> toJson() => {'email': email, 'password': password};
}

class UserUncheckedUpdateWithoutTasksInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateWithoutTasksInput({
    this.id,
    this.email,
    this.password,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'password': password,
  };
}

class UserUpsertWithoutTasksInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpsertWithoutTasksInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<
    _i2.UserUpdateWithoutTasksInput,
    _i2.UserUncheckedUpdateWithoutTasksInput
  >
  update;

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutTasksInput,
    _i2.UserUncheckedCreateWithoutTasksInput
  >
  create;

  final _i2.UserWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
    'update': update,
    'create': create,
    'where': where,
  };
}

class UserUpdateToOneWithWhereWithoutTasksInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateToOneWithWhereWithoutTasksInput({
    this.where,
    required this.data,
  });

  final _i2.UserWhereInput? where;

  final _i1.PrismaUnion<
    _i2.UserUpdateWithoutTasksInput,
    _i2.UserUncheckedUpdateWithoutTasksInput
  >
  data;

  @override
  Map<String, dynamic> toJson() => {'where': where, 'data': data};
}

class UserUpdateOneRequiredWithoutTasksNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateOneRequiredWithoutTasksNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<
    _i2.UserCreateWithoutTasksInput,
    _i2.UserUncheckedCreateWithoutTasksInput
  >?
  create;

  final _i2.UserCreateOrConnectWithoutTasksInput? connectOrCreate;

  final _i2.UserUpsertWithoutTasksInput? upsert;

  final _i2.UserWhereUniqueInput? connect;

  final _i1.PrismaUnion<
    _i2.UserUpdateToOneWithWhereWithoutTasksInput,
    _i1.PrismaUnion<
      _i2.UserUpdateWithoutTasksInput,
      _i2.UserUncheckedUpdateWithoutTasksInput
    >
  >?
  update;

  @override
  Map<String, dynamic> toJson() => {
    'create': create,
    'connectOrCreate': connectOrCreate,
    'upsert': upsert,
    'connect': connect,
    'update': update,
  };
}

class TaskUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskUpdateInput({
    this.title,
    this.description,
    this.dueDate,
    this.isDone,
    this.user,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<
      _i2.NullableStringFieldUpdateOperationsInput,
      _i1.PrismaNull
    >
  >?
  description;

  final _i1.PrismaUnion<
    DateTime,
    _i1.PrismaUnion<
      _i2.NullableDateTimeFieldUpdateOperationsInput,
      _i1.PrismaNull
    >
  >?
  dueDate;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isDone;

  final _i2.UserUpdateOneRequiredWithoutTasksNestedInput? user;

  @override
  Map<String, dynamic> toJson() => {
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
    'user': user,
  };
}

class TaskUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskUncheckedUpdateInput({
    this.id,
    this.title,
    this.description,
    this.dueDate,
    this.isDone,
    this.userId,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<
      _i2.NullableStringFieldUpdateOperationsInput,
      _i1.PrismaNull
    >
  >?
  description;

  final _i1.PrismaUnion<
    DateTime,
    _i1.PrismaUnion<
      _i2.NullableDateTimeFieldUpdateOperationsInput,
      _i1.PrismaNull
    >
  >?
  dueDate;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isDone;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? userId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
    'userId': userId,
  };
}

class TaskUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskUncheckedUpdateManyInput({
    this.id,
    this.title,
    this.description,
    this.dueDate,
    this.isDone,
    this.userId,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<
      _i2.NullableStringFieldUpdateOperationsInput,
      _i1.PrismaNull
    >
  >?
  description;

  final _i1.PrismaUnion<
    DateTime,
    _i1.PrismaUnion<
      _i2.NullableDateTimeFieldUpdateOperationsInput,
      _i1.PrismaNull
    >
  >?
  dueDate;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isDone;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? userId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
    'userId': userId,
  };
}

class TaskCountAggregateOutputType {
  const TaskCountAggregateOutputType({
    this.id,
    this.title,
    this.description,
    this.dueDate,
    this.isDone,
    this.userId,
    this.$all,
  });

  factory TaskCountAggregateOutputType.fromJson(Map json) =>
      TaskCountAggregateOutputType(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        dueDate: json['dueDate'],
        isDone: json['isDone'],
        userId: json['userId'],
        $all: json['_all'],
      );

  final int? id;

  final int? title;

  final int? description;

  final int? dueDate;

  final int? isDone;

  final int? userId;

  final int? $all;

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
    'userId': userId,
    '_all': $all,
  };
}

class TaskAvgAggregateOutputType {
  const TaskAvgAggregateOutputType({this.id, this.userId});

  factory TaskAvgAggregateOutputType.fromJson(Map json) =>
      TaskAvgAggregateOutputType(id: json['id'], userId: json['userId']);

  final double? id;

  final double? userId;

  Map<String, dynamic> toJson() => {'id': id, 'userId': userId};
}

class TaskSumAggregateOutputType {
  const TaskSumAggregateOutputType({this.id, this.userId});

  factory TaskSumAggregateOutputType.fromJson(Map json) =>
      TaskSumAggregateOutputType(id: json['id'], userId: json['userId']);

  final int? id;

  final int? userId;

  Map<String, dynamic> toJson() => {'id': id, 'userId': userId};
}

class TaskMinAggregateOutputType {
  const TaskMinAggregateOutputType({
    this.id,
    this.title,
    this.description,
    this.dueDate,
    this.isDone,
    this.userId,
  });

  factory TaskMinAggregateOutputType.fromJson(Map json) =>
      TaskMinAggregateOutputType(
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
      );

  final int? id;

  final String? title;

  final String? description;

  final DateTime? dueDate;

  final bool? isDone;

  final int? userId;

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'dueDate': dueDate?.toIso8601String(),
    'isDone': isDone,
    'userId': userId,
  };
}

class TaskMaxAggregateOutputType {
  const TaskMaxAggregateOutputType({
    this.id,
    this.title,
    this.description,
    this.dueDate,
    this.isDone,
    this.userId,
  });

  factory TaskMaxAggregateOutputType.fromJson(Map json) =>
      TaskMaxAggregateOutputType(
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
      );

  final int? id;

  final String? title;

  final String? description;

  final DateTime? dueDate;

  final bool? isDone;

  final int? userId;

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'dueDate': dueDate?.toIso8601String(),
    'isDone': isDone,
    'userId': userId,
  };
}

class TaskGroupByOutputType {
  const TaskGroupByOutputType({
    this.id,
    this.title,
    this.description,
    this.dueDate,
    this.isDone,
    this.userId,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory TaskGroupByOutputType.fromJson(Map json) => TaskGroupByOutputType(
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
    $count: json['_count'] is Map
        ? _i2.TaskCountAggregateOutputType.fromJson(json['_count'])
        : null,
    $avg: json['_avg'] is Map
        ? _i2.TaskAvgAggregateOutputType.fromJson(json['_avg'])
        : null,
    $sum: json['_sum'] is Map
        ? _i2.TaskSumAggregateOutputType.fromJson(json['_sum'])
        : null,
    $min: json['_min'] is Map
        ? _i2.TaskMinAggregateOutputType.fromJson(json['_min'])
        : null,
    $max: json['_max'] is Map
        ? _i2.TaskMaxAggregateOutputType.fromJson(json['_max'])
        : null,
  );

  final int? id;

  final String? title;

  final String? description;

  final DateTime? dueDate;

  final bool? isDone;

  final int? userId;

  final _i2.TaskCountAggregateOutputType? $count;

  final _i2.TaskAvgAggregateOutputType? $avg;

  final _i2.TaskSumAggregateOutputType? $sum;

  final _i2.TaskMinAggregateOutputType? $min;

  final _i2.TaskMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'dueDate': dueDate?.toIso8601String(),
    'isDone': isDone,
    'userId': userId,
    '_count': $count?.toJson(),
    '_avg': $avg?.toJson(),
    '_sum': $sum?.toJson(),
    '_min': $min?.toJson(),
    '_max': $max?.toJson(),
  };
}

class TaskCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskCountOrderByAggregateInput({
    this.id,
    this.title,
    this.description,
    this.dueDate,
    this.isDone,
    this.userId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? title;

  final _i2.SortOrder? description;

  final _i2.SortOrder? dueDate;

  final _i2.SortOrder? isDone;

  final _i2.SortOrder? userId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
    'userId': userId,
  };
}

class TaskAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskAvgOrderByAggregateInput({this.id, this.userId});

  final _i2.SortOrder? id;

  final _i2.SortOrder? userId;

  @override
  Map<String, dynamic> toJson() => {'id': id, 'userId': userId};
}

class TaskMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskMaxOrderByAggregateInput({
    this.id,
    this.title,
    this.description,
    this.dueDate,
    this.isDone,
    this.userId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? title;

  final _i2.SortOrder? description;

  final _i2.SortOrder? dueDate;

  final _i2.SortOrder? isDone;

  final _i2.SortOrder? userId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
    'userId': userId,
  };
}

class TaskMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskMinOrderByAggregateInput({
    this.id,
    this.title,
    this.description,
    this.dueDate,
    this.isDone,
    this.userId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? title;

  final _i2.SortOrder? description;

  final _i2.SortOrder? dueDate;

  final _i2.SortOrder? isDone;

  final _i2.SortOrder? userId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
    'userId': userId,
  };
}

class TaskSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskSumOrderByAggregateInput({this.id, this.userId});

  final _i2.SortOrder? id;

  final _i2.SortOrder? userId;

  @override
  Map<String, dynamic> toJson() => {'id': id, 'userId': userId};
}

class TaskOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskOrderByWithAggregationInput({
    this.id,
    this.title,
    this.description,
    this.dueDate,
    this.isDone,
    this.userId,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? title;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? description;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? dueDate;

  final _i2.SortOrder? isDone;

  final _i2.SortOrder? userId;

  final _i2.TaskCountOrderByAggregateInput? $count;

  final _i2.TaskAvgOrderByAggregateInput? $avg;

  final _i2.TaskMaxOrderByAggregateInput? $max;

  final _i2.TaskMinOrderByAggregateInput? $min;

  final _i2.TaskSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
    'userId': userId,
    '_count': $count,
    '_avg': $avg,
    '_max': $max,
    '_min': $min,
    '_sum': $sum,
  };
}

class NestedIntNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<
    int,
    _i1.PrismaUnion<_i1.Reference<int>, _i1.PrismaNull>
  >?
  equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<
    int,
    _i1.PrismaUnion<_i2.NestedIntNullableFilter, _i1.PrismaNull>
  >?
  not;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'not': not,
  };
}

class NestedStringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.search,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>
  >?
  equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final String? search;

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<
      _i2.NestedStringNullableWithAggregatesFilter,
      _i1.PrismaNull
    >
  >?
  not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'contains': contains,
    'startsWith': startsWith,
    'endsWith': endsWith,
    'search': search,
    'not': not,
    '_count': $count,
    '_min': $min,
    '_max': $max,
  };
}

class StringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.search,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>
  >?
  equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final String? search;

  final _i1.PrismaUnion<
    String,
    _i1.PrismaUnion<
      _i2.NestedStringNullableWithAggregatesFilter,
      _i1.PrismaNull
    >
  >?
  not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'contains': contains,
    'startsWith': startsWith,
    'endsWith': endsWith,
    'search': search,
    'not': not,
    '_count': $count,
    '_min': $min,
    '_max': $max,
  };
}

class NestedDateTimeNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<
    DateTime,
    _i1.PrismaUnion<_i1.Reference<DateTime>, _i1.PrismaNull>
  >?
  equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<
    DateTime,
    _i1.PrismaUnion<
      _i2.NestedDateTimeNullableWithAggregatesFilter,
      _i1.PrismaNull
    >
  >?
  not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedDateTimeNullableFilter? $min;

  final _i2.NestedDateTimeNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'not': not,
    '_count': $count,
    '_min': $min,
    '_max': $max,
  };
}

class DateTimeNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<
    DateTime,
    _i1.PrismaUnion<_i1.Reference<DateTime>, _i1.PrismaNull>
  >?
  equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<
    DateTime,
    _i1.PrismaUnion<
      _i2.NestedDateTimeNullableWithAggregatesFilter,
      _i1.PrismaNull
    >
  >?
  not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedDateTimeNullableFilter? $min;

  final _i2.NestedDateTimeNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'in': $in,
    'notIn': notIn,
    'lt': lt,
    'lte': lte,
    'gt': gt,
    'gte': gte,
    'not': not,
    '_count': $count,
    '_min': $min,
    '_max': $max,
  };
}

class NestedBoolWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedBoolWithAggregatesFilter({
    this.equals,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedBoolFilter? $min;

  final _i2.NestedBoolFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'not': not,
    '_count': $count,
    '_min': $min,
    '_max': $max,
  };
}

class BoolWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolWithAggregatesFilter({
    this.equals,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedBoolFilter? $min;

  final _i2.NestedBoolFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
    'equals': equals,
    'not': not,
    '_count': $count,
    '_min': $min,
    '_max': $max,
  };
}

class TaskScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.title,
    this.description,
    this.dueDate,
    this.isDone,
    this.userId,
  });

  final _i1.PrismaUnion<
    _i2.TaskScalarWhereWithAggregatesInput,
    Iterable<_i2.TaskScalarWhereWithAggregatesInput>
  >?
  AND;

  final Iterable<_i2.TaskScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<
    _i2.TaskScalarWhereWithAggregatesInput,
    Iterable<_i2.TaskScalarWhereWithAggregatesInput>
  >?
  NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? title;

  final _i1.PrismaUnion<
    _i2.StringNullableWithAggregatesFilter,
    _i1.PrismaUnion<String, _i1.PrismaNull>
  >?
  description;

  final _i1.PrismaUnion<
    _i2.DateTimeNullableWithAggregatesFilter,
    _i1.PrismaUnion<DateTime, _i1.PrismaNull>
  >?
  dueDate;

  final _i1.PrismaUnion<_i2.BoolWithAggregatesFilter, bool>? isDone;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? userId;

  @override
  Map<String, dynamic> toJson() => {
    'AND': AND,
    'OR': OR,
    'NOT': NOT,
    'id': id,
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
    'userId': userId,
  };
}

class TaskCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskCountAggregateOutputTypeSelect({
    this.id,
    this.title,
    this.description,
    this.dueDate,
    this.isDone,
    this.userId,
    this.$all,
  });

  final bool? id;

  final bool? title;

  final bool? description;

  final bool? dueDate;

  final bool? isDone;

  final bool? userId;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
    'userId': userId,
    '_all': $all,
  };
}

class TaskGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskGroupByOutputTypeCountArgs({this.select});

  final _i2.TaskCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TaskAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskAvgAggregateOutputTypeSelect({this.id, this.userId});

  final bool? id;

  final bool? userId;

  @override
  Map<String, dynamic> toJson() => {'id': id, 'userId': userId};
}

class TaskGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskGroupByOutputTypeAvgArgs({this.select});

  final _i2.TaskAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TaskSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskSumAggregateOutputTypeSelect({this.id, this.userId});

  final bool? id;

  final bool? userId;

  @override
  Map<String, dynamic> toJson() => {'id': id, 'userId': userId};
}

class TaskGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskGroupByOutputTypeSumArgs({this.select});

  final _i2.TaskSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TaskMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskMinAggregateOutputTypeSelect({
    this.id,
    this.title,
    this.description,
    this.dueDate,
    this.isDone,
    this.userId,
  });

  final bool? id;

  final bool? title;

  final bool? description;

  final bool? dueDate;

  final bool? isDone;

  final bool? userId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
    'userId': userId,
  };
}

class TaskGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskGroupByOutputTypeMinArgs({this.select});

  final _i2.TaskMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TaskMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskMaxAggregateOutputTypeSelect({
    this.id,
    this.title,
    this.description,
    this.dueDate,
    this.isDone,
    this.userId,
  });

  final bool? id;

  final bool? title;

  final bool? description;

  final bool? dueDate;

  final bool? isDone;

  final bool? userId;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
    'userId': userId,
  };
}

class TaskGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskGroupByOutputTypeMaxArgs({this.select});

  final _i2.TaskMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TaskGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskGroupByOutputTypeSelect({
    this.id,
    this.title,
    this.description,
    this.dueDate,
    this.isDone,
    this.userId,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? title;

  final bool? description;

  final bool? dueDate;

  final bool? isDone;

  final bool? userId;

  final _i1.PrismaUnion<bool, _i2.TaskGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.TaskGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.TaskGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.TaskGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.TaskGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'dueDate': dueDate,
    'isDone': isDone,
    'userId': userId,
    '_count': $count,
    '_avg': $avg,
    '_sum': $sum,
    '_min': $min,
    '_max': $max,
  };
}

class AggregateTask {
  const AggregateTask({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateTask.fromJson(Map json) => AggregateTask(
    $count: json['_count'] is Map
        ? _i2.TaskCountAggregateOutputType.fromJson(json['_count'])
        : null,
    $avg: json['_avg'] is Map
        ? _i2.TaskAvgAggregateOutputType.fromJson(json['_avg'])
        : null,
    $sum: json['_sum'] is Map
        ? _i2.TaskSumAggregateOutputType.fromJson(json['_sum'])
        : null,
    $min: json['_min'] is Map
        ? _i2.TaskMinAggregateOutputType.fromJson(json['_min'])
        : null,
    $max: json['_max'] is Map
        ? _i2.TaskMaxAggregateOutputType.fromJson(json['_max'])
        : null,
  );

  final _i2.TaskCountAggregateOutputType? $count;

  final _i2.TaskAvgAggregateOutputType? $avg;

  final _i2.TaskSumAggregateOutputType? $sum;

  final _i2.TaskMinAggregateOutputType? $min;

  final _i2.TaskMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
    '_count': $count?.toJson(),
    '_avg': $avg?.toJson(),
    '_sum': $sum?.toJson(),
    '_min': $min?.toJson(),
    '_max': $max?.toJson(),
  };
}

class AggregateTaskCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTaskCountArgs({this.select});

  final _i2.TaskCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTaskAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTaskAvgArgs({this.select});

  final _i2.TaskAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTaskSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTaskSumArgs({this.select});

  final _i2.TaskSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTaskMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTaskMinArgs({this.select});

  final _i2.TaskMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTaskMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTaskMaxArgs({this.select});

  final _i2.TaskMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTaskSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTaskSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateTaskCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateTaskAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateTaskSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateTaskMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateTaskMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
    '_count': $count,
    '_avg': $avg,
    '_sum': $sum,
    '_min': $min,
    '_max': $max,
  };
}
