import 'package:flutter/material.dart';
import 'package:flutter_navigator3/screen/new_screen.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(
    MaterialApp.router(
      routerConfig: GoRouter(
        initialLocation: "/",
        routes: [
          GoRoute(path: "/",name: "home",builder: (context,_)=>HomeBody()),
          GoRoute(path: "/",name: "newpage",builder: (context,_)=>NewPage()),
          GoRoute(path: "/",name: "newpage2",builder: (context,_)=>NewPage2())
        ],
      ),
    ),
  );
}
class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.pushNamed("newpage");
          },
          child: Text("home"),
        ),
      ),
    );
  }
}
