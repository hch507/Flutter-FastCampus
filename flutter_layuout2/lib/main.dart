
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      body: Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Flexible(flex:1,child: Container(color: Colors.green,)),
        // Flexible(flex:2,child: Container(color: Colors.red,)),
        // Flexible(flex:3,child: Container(color: Colors.blue,)),
        // Flexible(flex:4,child: Container(color: Colors.grey,)),
        Container(color: Colors.blue,height: 100,),
        Expanded(child: Container(color: Colors.lightGreenAccent,)),
        Flexible(child: Container(color: Colors.grey,)),
      ],
    );
  }
}
