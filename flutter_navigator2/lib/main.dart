import 'package:flutter/material.dart';
import 'package:flutter_navigator2/Screen/new_screen.dart';

void main() {
  runApp(MaterialApp(
    home: HomeBody(),
  ));
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NewPage(),
              ),
            );
          },
          child: Text("home"),
        ),
      ),
    );
  }
}
