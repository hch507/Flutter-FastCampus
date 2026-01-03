import 'package:flutter_todolist/data/entity/todo_isar.dart';
import 'package:flutter_todolist/data/entity/todo_status.dart';


class Todo {

  Todo({
    required this.id,
    required this.title,
    required this.dueDate,
    this.status = TodoStatus.incomplete,
    this.modifyTime,
    DateTime? createdTime,
  }) : createdTime = DateTime.now();

  int id;
  String title;
  final DateTime createdTime;
  DateTime? modifyTime;
  DateTime dueDate;
  TodoStatus status;


  factory Todo.fromDB(TodoIsar e) {
    return Todo(
        id: e.id,
        title: e.title,
        dueDate: e.dueDate,
        createdTime: e.createdTime,
        status: e.status,
        modifyTime: e.modifyTime);
  }
  TodoIsar toDbModel() => TodoIsar(id: id, title: title, dueDate: dueDate, createdTime: createdTime,status: status,modifyTime: modifyTime);
}