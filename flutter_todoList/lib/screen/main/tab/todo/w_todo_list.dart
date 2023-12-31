import 'package:flutter/material.dart';
import 'package:flutter_todolist/data/memory/todo_data_holder.dart';
import 'package:flutter_todolist/screen/main/tab/todo/w_todo_item.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: TodoDataHolder
          .of(context)
          .notifier,
      builder: (context, todoList, child) {
        return todoList.isEmpty ? Text(
          "할 일을 작성해보세요", style: TextStyle(fontSize: 30),) :
            ListView(
              children:
                todoList.map((e) => TodoItem(e)).toList()
            );
      },
    );
  }
}
