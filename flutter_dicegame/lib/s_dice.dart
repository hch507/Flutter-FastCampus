import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Dice game app"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(32),
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset("assets/images/dice$leftDice.png"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Image.asset("assets/images/dice$rightDice.png"),
                  ),
                ],
              ),
            ),
            ButtonTheme(
              minWidth: 100,
              height: 50.0,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    leftDice =Random().nextInt(6)+1;
                    rightDice =Random().nextInt(6)+1;
                  });
                },
                child: Icon(Icons.play_arrow),
              ),
            )
          ],
        ),
      ),
    );
  }
}
