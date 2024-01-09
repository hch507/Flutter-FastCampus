import 'package:flutter_todolist/data/local/local_db.dart';
import 'package:flutter_todolist/data/memory/todo_status.dart';
import 'package:flutter_todolist/data/memory/vo/vo_todo.dart';
import 'package:flutter_todolist/screen/main/write/vo_write_to_result.dart';
import 'package:get/get.dart';

class TodoDataHolder extends GetxController {
  final RxList<Todo> todoList = <Todo>[].obs;
  final Local = Localdb.instance;
  @override
  void onInit() async {
    final getTodoResult = await Local.getDataList();

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

  void addTodo(WriteTodoResult result) async {
    if (result != null) {
      final newTodo = Todo(
          id: DateTime.now().millisecondsSinceEpoch,
          title: result.text,
          dueDate: result.dateTime);
      todoList.add(newTodo);
      Local.addTodo(newTodo);
    }
  }

  void editTodo(Todo todo, WriteTodoResult result) {
    todo.title = result.text;
    todo.dueDate = result.dateTime;
    updateTodo(todo);
  }
  void removeTodo(Todo todo){
    todoList.remove(todo);
    Local.deleteTodo(todo.id);
    todoList.refresh();
  }
  void updateTodo(Todo todo) {
    Local.updateTodo(todo);
    notify(todo);
  }

  void notify(Todo todo) {
    final index = todoList.indexOf(todo);
    todoList[index] = todo;
  }
}

mixin TodoDataProvider {
  late TodoDataHolder todoData =Get.find();
}