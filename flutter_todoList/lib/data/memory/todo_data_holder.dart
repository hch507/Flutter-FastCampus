
import 'package:flutter/material.dart';
import 'package:flutter_todolist/data/memory/todo_status.dart';
import 'package:flutter_todolist/data/memory/vo/todo_data_notifier.dart';
import 'package:flutter_todolist/data/memory/vo/vo_todo.dart';

class TodoDataHolder extends InheritedWidget{
  final TodoDataNotifier notifier;
  TodoDataHolder({required super.child,required this.notifier});

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {

    return true;
  }

  static TodoDataHolder of(BuildContext context){
    //tododataholder를 찾아 돌려줌
    TodoDataHolder inherited =(context.dependOnInheritedWidgetOfExactType<TodoDataHolder>())!;
    return inherited;
  }

  void changeTodoStatus(Todo todo){
    switch(todo.status){
      case TodoStatus.incomplete:
        todo.status = TodoStatus.ongoing;

      case TodoStatus.complete:
        todo.status =TodoStatus.incomplete;

      case TodoStatus.ongoing:
        todo.status = TodoStatus.complete;
    }
    notifier.notifyListeners();
  }

  
}