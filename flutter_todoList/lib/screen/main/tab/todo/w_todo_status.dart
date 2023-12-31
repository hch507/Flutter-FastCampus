import 'package:flutter/material.dart';
import 'package:flutter_todolist/data/memory/todo_data_holder.dart';
import 'package:flutter_todolist/data/memory/todo_status.dart';
import 'package:flutter_todolist/data/memory/vo/vo_todo.dart';
import 'package:flutter_todolist/screen/main/widget/w_tap.dart';

class TodoStatusWidget extends StatelessWidget {
  final Todo todo;

  const TodoStatusWidget(this.todo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: () {
        TodoDataHolder.of(context).changeTodoStatus(todo);
      },
      child: SizedBox(
          width: 50,
          height: 50,
          child: switch (todo.status) {
            TodoStatus.complete => Checkbox(
                value: true,
                onChanged: null,
              ),
            TodoStatus.incomplete => Checkbox(
                value: false,
                onChanged: null,
              ),
            TodoStatus.ongoing=>Container(
              color: Colors.orange,
            )
          }),
    );
  }
}
