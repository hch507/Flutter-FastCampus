import 'package:flutter/cupertino.dart';
import 'package:rockpaperscissors/Game/enum.dart';

class GameResult extends StatelessWidget {
  final bool isDone;
  final Result? result;
  const GameResult({required this.isDone,this.result ,super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Center(
        child: Text(result!.displayString),
      );
    }
    return Center(
      child: Text(
        "가위 바위 보 중 하나를 선택 해 주세요",
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
