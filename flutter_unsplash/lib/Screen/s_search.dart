import 'package:flutter/material.dart';
import 'package:flutter_unsplash/Screen/w_search_fragment.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UNSPLASH SEARCH", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold ),),
        backgroundColor: Colors.redAccent,
      ),
      // body: SearchFragment(),
      body: SearchFragment(),
    );
  }
}
