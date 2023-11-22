import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {
                  print("버튼이 눌렸습니다");
                },
                icon: Icon(Icons.home)),
            Icon(Icons.play_arrow)
          ],
          title: Text("This is Appbar"),
        ),
        body: TestWidget(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.bug_report),
          onPressed: () {
            print('플로팅 버튼');
          },
        ),
      ),
    ),
  );
}

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text(
          "Hello flutter",
          style: TextStyle(color: Colors.black, fontSize: 60),
        ),
      ),
    );
  }
}
