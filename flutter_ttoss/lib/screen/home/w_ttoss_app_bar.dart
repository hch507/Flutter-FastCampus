import 'package:flutter/material.dart';
import 'package:flutter_ttoss/common/constant/app_colors.dart';
import 'package:flutter_ttoss/common/constants.dart';

class TtossAppBar extends StatefulWidget {
  const TtossAppBar({super.key});

  @override
  State<TtossAppBar> createState() => _TtossAppBarState();
}

class _TtossAppBarState extends State<TtossAppBar> {
  bool _showRedPnt = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Color.fromARGB(255, 16, 16, 16),
      child: Row(
        children: [
          SizedBox(width: 10),
          Image.asset(
            "$basePath/icon/toss.png",
            height: 30,
          ),
          Expanded(child: Container()),
          Image.asset(
            "$basePath/icon/map_point.png",
            height: 30,
          ),
          SizedBox(width: 10),
          Stack(
            children: [
              Image.asset(
                "$basePath/icon/notification.png",
                height: 30,
              ),
              if(_showRedPnt)Positioned.fill(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 6,
                    width: 6,
                    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
