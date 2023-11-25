import 'package:flutter/material.dart';

void main() {
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
        ExampleStateless(),
        ExampleStateful(num:3),
      ],
    );
  }
}

class ExampleStateless extends StatelessWidget {
  const ExampleStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.red,
      ),
    );
  }
}

class ExampleStateful extends StatefulWidget {
  final int num;
  const ExampleStateful({required this.num, super.key});


  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}

class _ExampleStatefulState extends State<ExampleStateful> {
  late int index;
  late int _num;

  @override
  void initState() {
    super.initState();
    index=0;
    _num=widget.num;
  }
  //위젯을 안쓸떄 자원을 아끼기위해 dispose내부에 설정
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (index == 5) {
              index = 0;
            }
            index++;
            print("$index");
            print("$_num");
          });

        },
        child: Container(
          color: Colors.blue,
          child: Center(child: Text("$index")),
        ),
      ),
    );
  }
}
