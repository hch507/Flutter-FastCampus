import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputCard extends StatelessWidget {
  final Widget child;
  final VoidCallback? callback;
  const InputCard({
    this.callback,required this.child,super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(onTap: () => callback?.call(), child: InputContent(child: child)),
    );
  }
}

class InputContent extends StatelessWidget {
  const InputContent({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey, width: 8)
      ),
      child: child,
    );
  }
}
