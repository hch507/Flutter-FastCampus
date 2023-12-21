import 'package:flutter/material.dart';
import 'package:flutter_ttoss/screen/tap/stock/stock_dummy.dart';
import 'package:flutter_ttoss/screen/tap/stock/stock_item.dart';

class InterestStockList extends StatelessWidget {
  const InterestStockList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...myInterestStock.map((e) => StockItem(stock: e,)).toList()
      ],
    );
  }
}
