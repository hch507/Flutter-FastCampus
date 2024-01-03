import 'package:flutter/material.dart';
import 'package:flutter_unsplash/controller/Input_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class UnsplashFragment extends StatelessWidget {
  UnsplashFragment({super.key});

  final controller = Get.put(InputController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
        child: Obx(
          () => GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
            itemBuilder: (context, index) {
              return Container(
                color: Colors.red,
              );
            },
            itemCount: 20,
          ),
        ),
      ),
    );
  }
}
