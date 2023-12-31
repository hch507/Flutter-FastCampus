import 'package:flutter/material.dart';
import 'package:flutter_todolist/screen/main/tab/todo/w_todo_list.dart';
import 'package:velocity_x/velocity_x.dart';

class TodoFragment extends StatelessWidget {
  const TodoFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu),
              ),

            ],
          ),
          Expanded(flex:1, child: TodoList())
        ],
      ),
    );
  }
}
