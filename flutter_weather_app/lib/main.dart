import 'package:flutter/material.dart';
import 'package:flutter_weather_app/screens/s_loading.dart';
const apiKey ="f06060f07a89ebe7a93f77ea25ee868a";
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: Loading(),
    );
  }
}



