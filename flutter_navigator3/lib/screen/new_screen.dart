import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
              context.pop();
            },
            child: Text("Go to back"),),
          TextButton(
            onPressed: () {
              context.pushNamed("newpage2");
            },
            child: Text("Go to page2"),),
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
            context.pushNamed("home");
          },
          child: Text("Go to home"),
        )
      ],
    );
  }
}