

import 'package:flutter_todolist/data/entity/vo_todo.dart';
import 'package:flutter_todolist/data/repositiory/todo_repositoryImpl.dart';
import 'package:flutter_todolist/domain/domain.dart';
import 'package:flutter_todolist/domain/usecase/base.dart';
import 'package:flutter_todolist/presentation/main/write/vo_write_to_result.dart';

class AddTodoUseCase implements Usecase<void, Todo>{
  final TodoRepository _todoRepository = TodoRepositoryImpl();

  @override
  Future<void> excute(Todo todo) {
    return _todoRepository.addTodo(todo);
  }

  
}

class GetTodoListUseCase implements Usecase<List<Todo>, void>{
  final TodoRepository _todoRepository = TodoRepositoryImpl();
  @override
  Future<List<Todo>> excute([void param]) async{
    return await _todoRepository.getTodoList();
  }

}

class UpdateTodoUseCase implements Usecase<void, Todo>{
  final TodoRepository _todoRepository = TodoRepositoryImpl();
  @override
  Future<void> excute(Todo todo) {
    return _todoRepository.updateTodo(todo);
  }

}

class RemoveTodoUseCase implements Usecase<void, int>{
  final TodoRepository _todoRepository = TodoRepositoryImpl();
  @override
  Future<void> excute(int id) {
    return _todoRepository.removeTodo(id);
  }
}