import 'package:flutter/material.dart';
import 'package:flutter_todolist/data/entity/todo_status.dart';
import 'package:flutter_todolist/data/entity/vo_todo.dart';


import 'package:flutter_todolist/presentation/controller/todo_data_holder.dart';
import 'package:flutter_todolist/presentation/widget/w_tap.dart';


class TodoStatusWidget extends StatelessWidget with TodoDataProvider {
  final Todo todo;

  TodoStatusWidget(this.todo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: () {
        todoData.changeTodoStatus(todo);
      },
      child: SizedBox(
        width: 50,
        height: 50,
        child: switch (todo.status) {
          TodoStatus.complete =>
              Checkbox(
              value: true,
              onChanged: null,
            ),
          TodoStatus.incomplete => Checkbox(
              value: false,
              onChanged: null,
            ),
          TodoStatus.ongoing => Container(
              color: Colors.orange,
            ),
          _ =>
          Container()
        },
      ),
    );
  }
}
