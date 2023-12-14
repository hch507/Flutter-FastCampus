import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PointButton extends StatelessWidget {
  final int point;
  const PointButton({required this.point, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        "내 포인트".text.make(),
        Expanded(flex: 1,child: Container()),
        "혜택".text.make(),
        SizedBox(width: 10,),
        Icon(Icons.arrow_forward_ios)
      ],
    );
  }
}
