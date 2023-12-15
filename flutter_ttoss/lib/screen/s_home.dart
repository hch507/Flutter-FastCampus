import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ttoss/screen/tap/all/f_all.dart';
import 'package:flutter_ttoss/screen/tap/benefit/f_benefit.dart';
import 'package:flutter_ttoss/screen/tap/home/f_home.dart';
import 'package:flutter_ttoss/screen/tap/stock/f_stock.dart';
import 'package:flutter_ttoss/screen/tap/tosspay/f_tosspay.dart';

import '../common/constant/app_colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xff26ff8c), brightness: Brightness.dark),

        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            selectedItemColor: Colors.white),
      ),
      home: Scaffold(
          body: SafeArea(
            child: homebody(),
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
          currentIndex: index,
          onTap: (newIndex) =>
              setState(() {
                index = newIndex;
              },),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "홈"),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "헤택"),
            BottomNavigationBarItem(icon: Icon(Icons.payment), label: "토스페이"),
            BottomNavigationBarItem(
                icon: Icon(Icons.candlestick_chart), label: "주식"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "전체"),
          ],
        ),
      ),
    );
  }



  Widget homebody() {
    switch (index) {
      case 1:
        return BenefitFragment();
      case 2:
        return TosspayFragment();
      case 3:
        return StockFragment();
      case 4:
        return AllFragment();
      case 0:
      default:
        return HomeFragment();
    }
  }
}

