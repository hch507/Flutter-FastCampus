
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LongButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;

  const LongButton({required this.text,super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(

        children: [
          text.text.make(),
          Expanded(flex: 1, child: Container()),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
