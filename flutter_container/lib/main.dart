import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("study to container"),
        ),
        body: CustomContainer(),
      ),
    ),
  );
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(
            color: Colors.red,
            width: 5,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(color: Colors.grey, offset: Offset(6,6),blurRadius:10 ,spreadRadius: 10),
            BoxShadow(color: Colors.blue, offset: Offset(-6,-6),blurRadius:10 ,spreadRadius: 10)
          ]
        ),
        child: Center(
            child:
                Container(color: Colors.amber, child: Text('hello container'))),
      ),
    );
  }
}
