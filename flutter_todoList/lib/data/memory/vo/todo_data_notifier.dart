
import 'package:flutter/material.dart';
import 'package:flutter_todolist/data/memory/vo/vo_todo.dart';

class TodoDataNotifier extends ValueNotifier<List<Todo>>{
  TodoDataNotifier(): super([]);

  void addTodo(Todo todo){
    value.add(todo);
    notifyListeners();
  }
}