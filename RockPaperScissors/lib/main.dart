import 'package:flutter/material.dart';

import 'Game/game_body.dart';

void main() {
  runApp(const RSPApp());
}

class RSPApp extends StatelessWidget {
  const RSPApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("가위바위보"),
          backgroundColor: Colors.cyan,
        ),
        body: GameBody(),
      ),
    );
  }
}

