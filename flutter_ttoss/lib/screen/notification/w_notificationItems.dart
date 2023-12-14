import 'package:flutter/material.dart';
import 'package:flutter_ttoss/screen/notification/vo/vo_notification.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:timeago/timeago.dart' as timeago;
class NotificationItemWidget extends StatefulWidget {
  final TossNotification tossNotification;

  const NotificationItemWidget({required this.tossNotification, super.key});

  @override
  State<NotificationItemWidget> createState() => _NotificationItemWidgetState();
}

class _NotificationItemWidgetState extends State<NotificationItemWidget> {
  static const leftPadding = 10.0;
  static const iconWidth =25.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      color: widget.tossNotification.isRead
          ? Colors.black
          : Color.fromARGB(255, 48, 48, 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            children: [
              SizedBox(
                width: leftPadding,
              ),
              Image.asset(widget.tossNotification.type.iconPath, width: iconWidth),
              widget.tossNotification.type.name.text
                  .size(12)
                  .color(Colors.grey)
                  .make(),
              Expanded(flex:1, child: Container()),
              timeago.format(widget.tossNotification.time, locale: "ko").text.color(Colors.grey).make(),
              SizedBox(
                width: leftPadding,
              ),
            ],
          ),
          widget.tossNotification.description.text.make().pOnly(left: leftPadding+iconWidth)
        ],
      ),
    );
  }
}
