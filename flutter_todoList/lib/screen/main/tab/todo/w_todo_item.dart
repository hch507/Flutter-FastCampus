import 'package:flutter/material.dart';
import 'package:flutter_todolist/data/memory/todo_data_holder.dart';
import 'package:flutter_todolist/data/memory/vo/vo_todo.dart';
import 'package:flutter_todolist/screen/main/tab/todo/w_todo_status.dart';
import 'package:flutter_todolist/screen/main/write/d_write_todo.dart';
import 'package:flutter_todolist/screen/main/write/vo_write_to_result.dart';
import 'package:intl/intl.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;

  const TodoItem(this.todo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

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
                Expanded(child: Text(todo.title,style: TextStyle(fontSize: 20)),),
                IconButton(onPressed: () async {
                  WriteTodoResult result= await
                  showDialog(context: context, builder: (context){
                    return WriteTodoDialog(todoForEdit: todo,);
                  });
                  TodoDataHolder.of(context).editTodo(todo, result);
                }, icon: Icon(Icons.edit))
              ],
            )
          ],
        ));
  }

}
