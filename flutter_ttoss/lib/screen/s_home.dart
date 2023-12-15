import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ttoss/screen/home/f_home.dart';

import '../common/constant/app_colors.dart';

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
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xff26ff8c), brightness: Brightness.dark),

        // scaffoldBackgroundColor: AppColors.veryDarkGrey,
        // colorScheme: ColorScheme.dark(),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            showUnselectedLabels : true,
            showSelectedLabels: true,
            selectedItemColor: Colors.white),
      ),
      home: Scaffold(
          body: SafeArea(
            child: HomeFragment(),
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
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
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
