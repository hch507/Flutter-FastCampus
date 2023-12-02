import 'package:flutter/cupertino.dart';
import 'package:rockpaperscissors/Game/Widget/input_card.dart';
import 'package:rockpaperscissors/Game/enum.dart';

class CpuInput extends StatelessWidget {
  final bool isDone;
  final InputType cpuInput;

  const CpuInput({required this.cpuInput, required this.isDone, super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return const Placeholder();
    }

    return Row(
      children: [
        Expanded(child: SizedBox.shrink()),
        InputCard(
          child: getCpuInput(),
        ),
        Expanded(child: SizedBox.shrink()),
      ],
    );
  }
  Widget getCpuInput(){
    if(isDone){
      return Image.asset(cpuInput.path);
    }
    return SizedBox(
      height: 80,
      child: Center(
          child: Text(
            "?",
            style: TextStyle(fontSize: 40),
          )),
    );
  }
}
