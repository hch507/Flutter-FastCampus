import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding ;
  const RoundedContainer({required this.child,super.key , this.padding = const EdgeInsets.symmetric(vertical: 20, horizontal: 15)});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 24, 24, 24),
          borderRadius: BorderRadius.circular(20)
      ),
      child: child
    );
  }
}
