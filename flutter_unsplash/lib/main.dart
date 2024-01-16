import 'package:flutter/material.dart';
import 'package:flutter_unsplash/Screen/s_search.dart';
import 'package:flutter_unsplash/controller/Input_controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Get.put(InputController());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(

      home: SearchScreen(),
    );
  }
}
