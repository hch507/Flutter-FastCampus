
import 'package:flutter_todolist/data/entity/vo_todo.dart';
import 'package:flutter_todolist/presentation/main/write/vo_write_to_result.dart';

abstract class TodoRepository{
  Future<List<Todo>> getTodoList();
  Future<void> addTodo(Todo todo);
  Future<void> updateTodo(Todo todo);
  Future<void> removeTodo(int id);
}