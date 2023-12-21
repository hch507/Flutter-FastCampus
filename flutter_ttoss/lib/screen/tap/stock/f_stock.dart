import 'package:flutter/material.dart';
import 'package:flutter_ttoss/common/constants.dart';
import 'package:flutter_ttoss/screen/tap/stock/tab/my_stock_fragment.dart';
import 'package:flutter_ttoss/screen/tap/stock/tab/todays_discovery_fragment.dart';
import 'package:flutter_ttoss/widget/w_tap.dart';
import 'package:velocity_x/velocity_x.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({super.key});

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment>
    with SingleTickerProviderStateMixin {
  late final TabController tabController =
      TabController(length: 2, vsync: this);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          actions: [
            Tap(
                onTap: () {
                  print("검색");
                },
                child: Image.asset(
                  "$basePath/icon/stock_search.png",
                  height: 26,
                  width: 26,
                ).p(10)),
            Tap(
              onTap: () {
                print("달력");
              },
              child: Image.asset(
                "$basePath/icon/stock_calendar.png",
                height: 26,
                width: 26,
              ).p(10),
            ),
            Tap(
              onTap: () {
                print("세팅");
              },
              child: Image.asset(
                "$basePath/icon/stock_setting.png",
                height: 26,
                width: 26,
              ).p(10),
            )
          ],
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              title,
              tabBar,
              if(currentIndex==0)
                MyStockFragment()
              else
                TodaysDiscoveryFragment()
            ],
          ),
        ),
      ],
    );
  }

  Widget get title => Row(
        children: [
          "토스 증권".text.size(24).bold.make(),
          SizedBox(
            width: 20,
          ),
          "SAP 500".text.size(13).bold.color(Colors.red).make(),
          SizedBox(
            width: 10,
          ),
          3910.29.toString().text.size(13).bold.make()
        ],
      ).pOnly(left: 20);

  Widget get tabBar => Column(
        children: [
          TabBar(
              onTap: (index) {
                setState(
                  () {
                    currentIndex = index;
                  },
                );
              },
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              labelPadding: EdgeInsets.symmetric(vertical: 20),
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
              controller: tabController,
              tabs: ["내 주식".text.make(), "오늘의 발견".text.make()])
        ],
      );

}
