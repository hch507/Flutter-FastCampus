import 'package:flutter_todolist/data/memory/todo_status.dart';
import 'package:isar/isar.dart';

part 'todo_isar.g.dart';

@Collection()
class TodoIsar {
  Id id;

  @Index(type: IndexType.value)
  late final DateTime? createdTime;

  @Index(type: IndexType.value)
  DateTime? modifyTime;

  @Index(type: IndexType.value)
  String title;

  DateTime dueDate;

  @enumerated
  TodoStatus status;
  TodoIsar({
    required this.id,
    this.createdTime,
    this.modifyTime,
    required this.title,
    required this.dueDate,
    required this.status,
  });
}
