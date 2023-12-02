import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'body.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.light(
            primary: Colors.white,
            secondary: Colors.black,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Colors.black)),
      home: InstagramHome(),
    ),
  );
}

class InstagramHome extends StatefulWidget {
  const InstagramHome({super.key});

  @override
  State<InstagramHome> createState() => _InstagramHomeState();
}

class _InstagramHomeState extends State<InstagramHome> {
  late int index;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Instagram",
          style: GoogleFonts.lobsterTwo(fontSize: 32),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_outline),
            onPressed: () {
              print("onTap");
            },
          ),
          IconButton(
            icon: Icon(CupertinoIcons.paperplane),
            onPressed: () {
              print("onTap");
            },
          ),
        ],
      ),
      body: InstaBody(index: index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (newIndex) => setState(
          () {
            index = newIndex;
          },
        ),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 20), label: "홈"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 20), label: "검색")
        ],
      ),
    );
  }
}
