import 'package:flutter/material.dart';
import 'package:flutter_todolist/screen/main/tab/search/w_search_fragment.dart';
import 'package:flutter_todolist/screen/main/tab/todo/w_todo_fragment.dart';



class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Placeholder(),
      bottomNavigationBar: CustomBottmNavigation(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _showDialog(context);
        },
      ),
    );
  }

  Widget CustomBottmNavigation() {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.black26, blurRadius: 10, spreadRadius: 0)
      ]),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        child: BottomNavigationBar(
          currentIndex: index,
          onTap: (newIndex) => setState(() {
            index = newIndex;
          }),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.event_note_outlined), label: "todo"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "search")
          ],
        ),
      ),
    );
  }

  Widget todoBody() {
    switch (index) {
      case 1:
        return SearchFragment();
      case 0:
      default:
        return TodoFragment();
    }
  }

  Future<void> _showDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("test"),
          );
        });
  }
}
