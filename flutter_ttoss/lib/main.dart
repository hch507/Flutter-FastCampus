import 'package:flutter/material.dart';
import 'package:flutter_ttoss/screen/s_home.dart';
import 'package:timeago/timeago.dart' as timeago;

void main() {
  timeago.setLocaleMessages('ko', timeago.KoMessages());
  runApp(MainScreen());
}

