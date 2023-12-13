import 'package:flutter/material.dart';
import 'package:flutter_ttoss/screen/notification/vo/vo_notification.dart';
import 'package:velocity_x/velocity_x.dart';

class NotificationItemWidget extends StatefulWidget {
  final TossNotification tossNotification;
  const NotificationItemWidget({required this.tossNotification,super.key});

  @override
  State<NotificationItemWidget> createState() => _NotificationItemWidgetState();
}

class _NotificationItemWidgetState extends State<NotificationItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [

            Image.asset(widget.tossNotification.type.iconPath)
          ],
        ),
        widget.tossNotification.description.text.make()
      ],
    );
  }
}
