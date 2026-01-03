import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//flexible
class FlexBody extends StatelessWidget {
  const FlexBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(flex:1,child: Container(color: Colors.red,)),
        Flexible(flex:1,child: Container(color: Colors.grey,)),
        Flexible(flex:1,child: Container(color: Colors.amber,)),
        Flexible(flex:1,child: Container(color: Colors.blue,))
      ],
    );
  }
}

//Expanded

class ExpandedBody extends StatelessWidget {
  const ExpandedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Container(color: Colors.red, height: 100,)),
        Flexible(child: Container(color: Colors.blue, height: 100,))
      ],
    );
  }
}
