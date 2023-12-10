import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
        colorScheme:ColorScheme.dark(),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.grey,
            unselectedIconTheme: IconThemeData(color: Colors.white),
            showUnselectedLabels : true,
            showSelectedLabels: true,
            selectedItemColor: Colors.white),
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("toss"),
          ),
          bottomNavigationBar: _buildBottomNavigationBar()),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.black26, blurRadius: 10, spreadRadius: 0)
      ]),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          showUnselectedLabels: true,
          backgroundColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "홈"),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "헤택"),
            BottomNavigationBarItem(icon: Icon(Icons.payment), label: "토스페이"),
            BottomNavigationBarItem(icon: Icon(Icons.candlestick_chart), label: "주식"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "전체"),
          ],
        ),
      ),
    );
  }
}