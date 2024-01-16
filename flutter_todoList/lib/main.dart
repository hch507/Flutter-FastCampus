import 'package:flutter/material.dart';
import 'package:flutter_todolist/data/local/local_db.dart';
import 'package:flutter_todolist/presentation/controller/todo_data_holder.dart';

import 'package:flutter_todolist/presentation/s_main.dart';


import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Localdb.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState(){
    Get.put(TodoController());
  }
  @override
  void dispose(){

  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

