import 'package:flutter/cupertino.dart';
import 'package:flutter_ttoss/screen/tap/stock/tab/vo_stock.dart';
import 'package:velocity_x/velocity_x.dart';

class StockItem extends StatelessWidget {
  final Stock stock;
  const StockItem({required this.stock, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          SizedBox(width: 10,),
          Image.asset(stock.stockImagePath, width: 50,),
          SizedBox(width: 20,),
          (stock.stockName).text.size(18).bold.make(),
          Expanded(flex: 1,child: Container()),
          Column(
            children: [

            ],
          )
        ],
      )
    );
  }
}
