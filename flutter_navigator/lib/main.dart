import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeWidget(),
  ),);
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

  late int index;

  @override
  void initState() {
    super.initState();
    index=0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator"),
      ),
      body:HomeBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "person")
        ],
        currentIndex: index,
        onTap: (newIndex)=>setState(() {
          index = newIndex;
        }),
      ),
    );
  }

  Widget HomeBody(){
    switch(index){
      case 1:
        return Center(child: Icon(Icons.home));
      case 2:
        return Center(child: Icon(Icons.search));
      case 0:
      default:
        return Center(child: Icon(Icons.person));
    }
  }
}


