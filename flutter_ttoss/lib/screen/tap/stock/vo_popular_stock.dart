import 'package:flutter_ttoss/screen/tap/stock/vo_simple_stock.dart';

class PopularStock extends SimpleStock{

  final int yesterdayClosePrice;
  final int currentPrice;

  PopularStock({required this.yesterdayClosePrice,required this.currentPrice, required String stockName}) :super(stockName);

}