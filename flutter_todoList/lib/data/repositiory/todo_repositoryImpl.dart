import 'package:flutter_todolist/data/entity/vo_todo.dart';
import 'package:flutter_todolist/data/local/local_db.dart';
import 'package:flutter_todolist/domain/domain.dart';
import 'package:flutter_todolist/presentation/main/write/vo_write_to_result.dart';

class TodoRepositoryImpl implements TodoRepository{
  final Local = Localdb.instance;
  @override
  Future<void> addTodo(Todo todo)  => Local.addTodo(todo);

  @override
  Future<List<Todo>> getTodoList() async{
    return Local.getDataList();
  }

  @override
  Future<void> removeTodo(int id)  => Local.deleteTodo(id);

  @override
  Future<void> updateTodo(Todo todo)   => Local.updateTodo(todo);

}