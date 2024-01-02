import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class UnsplashFragment extends StatelessWidget {
  const UnsplashFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("${Get.arguments.toString()}"),
    );
  }
}
