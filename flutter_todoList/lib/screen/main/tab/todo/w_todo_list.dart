import 'package:flutter/material.dart';
import 'package:flutter_todolist/data/memory/todo_data_holder.dart';
import 'package:flutter_todolist/screen/main/tab/todo/w_todo_item.dart';
import 'package:get/get.dart';

class TodoList extends StatelessWidget with TodoDataProvider {
  TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() =>
    todoData.todoList.isEmpty ? Text(
      "할 일을 작성해보세요", style: TextStyle(fontSize: 30),) :
    ListView(
        children:
        todoData.todoList.map((e) => TodoItem(e)).toList()
    )
    );
  }
}
