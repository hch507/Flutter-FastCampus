import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rockpaperscissors/Game/Widget/cpu_input.dart';
import 'package:rockpaperscissors/Game/Widget/game_result.dart';
import 'package:rockpaperscissors/Game/Widget/user_input.dart';
import 'package:rockpaperscissors/Game/enum.dart';

class GameBody extends StatefulWidget {
  const GameBody({super.key});

  @override
  State<GameBody> createState() => _GameBodyState();
}

class _GameBodyState extends State<GameBody> {
  late bool isDone;
  InputType? _userInput;
  late InputType _cpuInput;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isDone = false;
    setCpuInput();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: CpuInput(isDone: isDone ,cpuInput: _cpuInput)),
        Expanded(child: GameResult(isDone: isDone, result: getResult )),
        Expanded(
          child: UserInput(userInput: _userInput, isDone: isDone, callback: setUserInput),
        ),
      ],
    );
  }

  void setUserInput(InputType userInput) {
    setState(
      () {
        isDone = true;
        _userInput = userInput;
      },
    );
  }
  void setCpuInput(){
    final random = Random();
    _cpuInput=InputType.values[random.nextInt(3)];
  }

  Result? getResult(){
    if(_userInput==null) return null;

    switch(_userInput!){
      case InputType.paper:
        switch(_cpuInput){
          case InputType.paper:
            return Result.draw;
          case InputType.rock:
            return Result.cpuWin;
          case InputType.scissors:
            return Result.playerWin;
        }
      case InputType.rock:
        switch(_cpuInput){
          case InputType.paper:
            return Result.cpuWin;
          case InputType.rock:
            return Result.draw;
          case InputType.scissors:
            return Result.playerWin;
        }
      case InputType.scissors:
        switch(_cpuInput){
          case InputType.paper:
            return Result.playerWin;
          case InputType.rock:
            return Result.cpuWin;
          case InputType.scissors:
            return Result.draw;
        }
    }
  }
}
