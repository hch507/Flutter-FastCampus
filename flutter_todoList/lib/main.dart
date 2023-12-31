import 'package:flutter/material.dart';
import 'package:flutter_todolist/data/memory/todo_data_holder.dart';
import 'package:flutter_todolist/data/memory/vo/todo_data_notifier.dart';
import 'package:flutter_todolist/screen/s_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final notifier =TodoDataNotifier();
  @override
  void dispose(){
    notifier.dispose();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return TodoDataHolder(
      notifier: notifier,
      child: MaterialApp(
        home: MainScreen(),
      ),
    );
  }
}

