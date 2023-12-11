import 'package:flutter/material.dart';
import 'package:flutter_ttoss/screen/home/vo/vo_bank_account.dart';
import 'package:flutter_ttoss/widget/w_rounded_container.dart';
import 'package:velocity_x/velocity_x.dart';

class BankAccountWidget extends StatelessWidget {
  final BankAccount account;
  const BankAccountWidget(this.account,{super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(account.bank.logoImagePath, width: 40,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (account.accountTypeName?? "${account.bank.name} 통장").text.white.size(12).make(),
              ("${account.balance} 통장").text.white.bold.size(12).make()
            ],
          ).pSymmetric(h: 20 , v: 10),
        ),
        RoundedContainer(child: "송금".text.white.bold.make())
      ],
    );
  }
}
