import 'package:flutter/material.dart';
import 'package:parr2_ch2/ch2-2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Witdget 상하로 배치하기"),
          ),
          body: FlexBody(),
        ));
  }
}

// column
class ColumnBody extends StatelessWidget {
  const ColumnBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text("Container1"),
            color: Colors.red,
          ),
          Container(child: Text("Container2"), color: Colors.green),
          Container(
            child: Text("Container3"),
          ),
        ],
      ),
    );
  }
}

//row

class RowBody extends StatelessWidget {
  const RowBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text("Container1"),
          color: Colors.red,
        ),
        Container(child: Text("Container2"), color: Colors.green),
        Container(
          child: Text("Container3"),
        ),
      ],
    );
  }
}

//Column and Row
class CAndRBody extends StatelessWidget {
  const CAndRBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text("Container1"),
              color: Colors.red,
            ),
            Container(child: Text("Container2"), color: Colors.green),
            Container(
              child: Text("Container3"),
            ),
          ],
        ),
        Container(
          child: Text("Container4"),
        )
      ],
    );
  }
}

//ScrollColumn
class ScrollBody extends StatelessWidget {
  const ScrollBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
      
        ],
      ),
    );
  }
}

