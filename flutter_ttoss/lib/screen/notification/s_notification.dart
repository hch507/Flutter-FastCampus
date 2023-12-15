import 'package:flutter/material.dart';
import 'package:flutter_ttoss/screen/notification/vo/notification_dummy.dart';
import 'package:flutter_ttoss/screen/notification/w_notificationItems.dart';
import 'package:velocity_x/velocity_x.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color.fromARGB(255, 16, 16, 16),
            title: "알람".text.make(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => NotificationItemWidget(
                    tossNotification: notificationDummies[index]),
                childCount: notificationDummies.length),
          )
        ],
      ),
    );
  }
}
