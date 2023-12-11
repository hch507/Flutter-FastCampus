import 'package:flutter/material.dart';
import 'package:flutter_ttoss/widget/w_rounded_container.dart';

class BigButton extends StatelessWidget {
  final String text;
  final VoidCallback onTab;

  const BigButton(this.text, {required this.onTab, super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
