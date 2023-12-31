import 'package:get/get.dart';
import 'package:getx_example/model/product.dart';

class ShoppingController extends GetxController{
  var product =<Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async{
    await Future.delayed(Duration(seconds: 2),);
    var productData = [
      Product(id: 1, name: "keyboard", descrption: "some keyboard about product", price: 300),
      Product(id: 2, name: "mouse", descrption: "some mouse about product", price: 200),
      Product(id: 3, name: "ram", descrption: "some ram about product", price: 100),
      Product(id: 4, name: "rom", descrption: "some rom about product", price: 400),
      Product(id: 4, name: "speaker", descrption: "some speaker about product", price: 500),

    ];
    product.assignAll(productData);
  }


}