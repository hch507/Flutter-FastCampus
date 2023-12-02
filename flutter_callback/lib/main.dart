import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Callback"),
        backgroundColor: Colors.cyan,
      ),
      body: Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return TestWidget();
  }
}

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Count : $value",
          style: TextStyle(fontSize: 30),
        ),
        TestButton(addCounter)
      ],
    );
  }
  void addCounter(){
    setState(() {
      value++;
    });
  }
}

class TestButton extends StatelessWidget {
  const TestButton( this.callback,{super.key});

  final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      child:  GestureDetector(
        onTap: ()=>callback.call(),
        child: Center(
          child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Text("UP COUNTER")),
        ),
      ),
    );
  }
}
