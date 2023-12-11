import 'package:flutter/material.dart';
import 'package:flutter_ttoss/screen/home/vo/bank_account_dummy.dart';
import 'package:flutter_ttoss/screen/home/w_bank_account_widget.dart';

import 'package:flutter_ttoss/screen/home/w_ttoss_app_bar.dart';
import 'package:flutter_ttoss/widget/w_big_button.dart';
import 'package:flutter_ttoss/widget/w_rounded_container.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({super.key});

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(top: 60),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                BigButton(
                  "토스뱅크",
                  onTab: () {
                    SnackBar(content: Text("토스 뱅크 클링"));
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                RoundedContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "자산".text.bold.white.make(),
                      ...bankAccounts.map((e) => BankAccountWidget(e)).toList()
                    ],
                  ),
                ),
              ],
            ).pSymmetric(h: 20),
          ),
          TtossAppBar()
        ],
      ),
    );
  }
}
