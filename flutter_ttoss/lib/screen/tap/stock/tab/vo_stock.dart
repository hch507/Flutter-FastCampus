import 'package:flutter_ttoss/screen/tap/stock/vo_popular_stock.dart';

class Stock extends PopularStock {
  final String stockImagePath;

  Stock(
      {required this.stockImagePath,
      required super.yesterdayClosePrice,
      required super.currentPrice,
      required super.stockName});
}
