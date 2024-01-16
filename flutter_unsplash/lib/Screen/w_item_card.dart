import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/vo_photo.dart';

class ItemCard extends StatelessWidget {
  Result result;

  ItemCard({required this.result, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
         Container(
            height: 75,
            width: 100,
            child: Image.network(
              result.urls.thumb!,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text("authoe : ${result.user.username} "),
                SizedBox(
                  height: 5,
                ),
                Text("Create : ${result.createAt}",
                    overflow: TextOverflow.ellipsis),
                SizedBox(
                  height: 5,
                ),
                Text("like : ${result.like}"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
