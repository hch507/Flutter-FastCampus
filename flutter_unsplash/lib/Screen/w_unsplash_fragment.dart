import 'package:flutter/material.dart';
import 'package:flutter_unsplash/Screen/w_item_card.dart';
import 'package:flutter_unsplash/controller/Input_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class UnsplashFragment extends StatelessWidget {
  UnsplashFragment({super.key});

  String _searchTerm = Get.arguments.toString();
  final InputController inputController = Get.put(InputController());

  @override
  Widget build(BuildContext context) {
    inputController.fetcchData(_searchTerm);
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
        child: Obx(
          () => GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
            itemBuilder: (context, index) {
              return ItemCard(
                result: inputController.photo[index],
              );
            },
            itemCount: inputController.photo.length,
          ),
        ),
      ),
    );
  }
}
