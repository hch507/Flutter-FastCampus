import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        children: [
          Container(
            height: 75,
            width: 100,
            child: Image.network('http',fit: BoxFit.fill,),
          ),
          SizedBox(height: 20,),
          Text("authoe : "),
          SizedBox(height: 5,),
          Text("Create : "),
          SizedBox(height: 5,),
          Text("like : "),
        ],
      ),
    );
  }
}
