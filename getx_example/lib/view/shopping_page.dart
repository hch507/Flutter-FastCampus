import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/controller/shopping_controller.dart';

class ShoppingPage extends StatelessWidget {
  ShoppingPage({super.key});

  final shoppingController = Get.put(ShoppingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          Expanded(
            child: GetX<ShoppingController>(builder: (controller) {
              return ListView.builder(
                itemCount: controller.product.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.all(12),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${controller.product[index].name}",
                                    style: TextStyle(fontSize: 24),
                                  ),
                                  Text(
                                      "${controller.product[index].descrption}")
                                ],
                              ),
                              Text(
                                "\$${controller.product[index].price}}",
                                style: TextStyle(fontSize: 24),
                              ),
                            ],
                          ),
                          ElevatedButton(onPressed: () {}, child: Text("add"))
                        ],
                      ),
                    ),
                  );
                },
              );
            }),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Total amount",
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label : Text("item"),
        icon: Icon(Icons.shopping_cart),

      ),
    );
  }
}
