import 'package:flutter_todolist/data/entity/todo_status.dart';
import 'package:flutter_todolist/data/entity/vo_todo.dart';
import 'package:flutter_todolist/data/local/local_db.dart';
import 'package:flutter_todolist/domain/usecase/todo_usecase.dart';
import 'package:flutter_todolist/presentation/main/write/vo_write_to_result.dart';

import 'package:get/get.dart';


class TodoController extends GetxController {
  final RxList<Todo> todoList = <Todo>[].obs;
  final Local = Localdb.instance;
  final AddTodoUseCase addTodoUseCase = AddTodoUseCase();
  final GetTodoListUseCase getTodoListUseCase = GetTodoListUseCase();
  final UpdateTodoUseCase updateTodoUseCase =UpdateTodoUseCase();
  final RemoveTodoUseCase removeTodoUseCase =RemoveTodoUseCase();
  @override
  void onInit() async {
    final getTodoResult = await getTodoListUseCase.excute();
    todoList.addAll(getTodoResult);
    super.onInit();
  }
  void changeTodoStatus(Todo todo) {
    switch (todo.status) {
      case TodoStatus.incomplete:
        todo.status = TodoStatus.ongoing;

      case TodoStatus.complete:
        todo.status = TodoStatus.incomplete;

      case TodoStatus.ongoing:
        todo.status = TodoStatus.complete;
    }
    updateTodo(todo);
  }

  void addTodo(WriteTodoResult result){
    if (result != null) {
      final newTodo = Todo(
          id: DateTime.now().millisecondsSinceEpoch,
          title: result.text,
          dueDate: result.dateTime);
      todoList.add(newTodo);
      addTodoUseCase.excute(newTodo);
    }
  }

  void editTodo(Todo todo, WriteTodoResult result){
    todo.title = result.text;
    todo.dueDate = result.dateTime;
    updateTodo(todo);
  }
  void removeTodo(Todo todo){
    todoList.remove(todo);
    removeTodoUseCase.excute(todo.id);
    todoList.refresh();
  }
  void updateTodo(Todo todo) {
    updateTodoUseCase.excute(todo);
    notify(todo);
  }

  void notify(Todo todo) {
    print("notify access");
    final index = todoList.indexOf(todo);
    todoList[index] = todo;
    todoList.refresh();
  }
}

mixin TodoDataProvider {
  late TodoController todoData =Get.find();
}