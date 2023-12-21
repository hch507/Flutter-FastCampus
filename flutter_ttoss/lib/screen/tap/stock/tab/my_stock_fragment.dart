import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ttoss/widget/w_rounded_container.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../widget/w_long_button.dart';
import '../../../../widget/w_tap.dart';
import '../w_interest_stock_list.dart';

class MyStockFragment extends StatelessWidget {
  const MyStockFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        myAccount,
        SizedBox(
          height: 20,
        ),
        myStock
      ],
    );
  }

  Widget get myAccount => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          "계좌".text.make(),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              "443원".text.size(24).bold.make(),
              Icon(Icons.arrow_forward_ios),
              Expanded(flex: 1, child: Container()),
              RoundedContainer(
                child: "채우기".text.size(12).make(),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
          SizedBox(height: 30,),
          LongButton(text:"주문 내역"),
          LongButton(text: "판매 수익")
        ],
      );

  Widget get myStock => Column(
    children: [
      SizedBox(height: 30,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          "관심 주식".text.bold.make(),
          "편집 하기".text.color(Colors.grey).make()

        ],
      ),
      SizedBox(height: 20,),
      Tap(
        onTap: (){ print("null");},
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Row(
            children: [
              "기본".text.make(),
              Icon(Icons.arrow_drop_up)
            ],
          ),
        ),
      ),
      InterestStockList()
    ],
  );
}
