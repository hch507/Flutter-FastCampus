import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('New Page'),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Go to back"),),
          TextButton(
            onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => NewPage2(),),);
            },
            child: Text("Go to back"),),
        ],
      ),
    );
  }
}

class NewPage2 extends StatelessWidget {
  const NewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Go to back"),
        ),
        TextButton(
          onPressed: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
          child: Text("Go to home"),
        )
      ],
    );
  }
}
