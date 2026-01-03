import 'package:flutter/material.dart';
import 'package:flutter_todolist/data/entity/vo_todo.dart';
import 'package:flutter_todolist/presentation/controller/todo_data_holder.dart';
import 'package:flutter_todolist/presentation/main/tab/todo/w_todo_status.dart';
import 'package:flutter_todolist/presentation/main/write/d_write_todo.dart';
import 'package:flutter_todolist/presentation/main/write/vo_write_to_result.dart';
import 'package:intl/intl.dart';

class TodoItem extends StatelessWidget with TodoDataProvider {
  final Todo todo;

  TodoItem(this.todo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      onDismissed: (direction) {
        todoData.removeTodo(todo);
      },
      key: ValueKey(todo.id),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Text(
                DateFormat("yyyy/MM/dd").format(todo.dueDate),
              ),
              Row(
                children: [
                  TodoStatusWidget(todo),
                  Expanded(
                    child: Text(
                      todo.title,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  IconButton(
                      onPressed: () async {
                        WriteTodoResult result = await showDialog(
                          context: context,
                          builder: (context) {
                            return WriteTodoDialog(
                              todoForEdit: todo,
                            );
                          },
                        );
                        todoData.editTodo(todo, result);
                      },
                      icon: Icon(Icons.edit))
                ],
              )
            ],
          )),
    );
  }
}
