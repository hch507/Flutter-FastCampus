import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Layout to study"),
        ),
        body: ScrollBody(),
      ),
    ),
  );
}

class ColumnBody extends StatelessWidget {
  const ColumnBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text("container1"),
            color: Colors.cyan,
          ),
          Container(
            child: Text("container2"),
            color: Colors.red,
          ),
          Container(
            child: Text("container3"),
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

class RowBody extends StatelessWidget {
  const RowBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Text("container1"),
            color: Colors.cyan,
          ),
          Container(
            child: Text("container2"),
            color: Colors.red,
          ),
          Container(
            child: Text("container3"),
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

class ScrollBody extends StatelessWidget {
  const ScrollBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.grey,
          ),
          Container(
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.grey,
          ),
          Container(
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.grey,
          ),
          Container(
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.grey,
          ),
          Container(
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.grey,
          ),
          Container(
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.grey,
          ),
          Container(
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.grey,
          ),
          Container(
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.grey,
          ),

          Container(
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
