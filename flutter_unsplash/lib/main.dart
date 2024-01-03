import 'package:flutter/material.dart';
import 'package:flutter_unsplash/Screen/s_search.dart';
import 'package:flutter_unsplash/controller/Input_controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(

      home: SearchScreen(),
    );
  }
}
