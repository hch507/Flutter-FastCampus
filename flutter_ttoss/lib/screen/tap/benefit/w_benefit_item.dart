import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ttoss/screen/tap/benefit/vo/benefit_dummy.dart';
import 'package:flutter_ttoss/screen/tap/benefit/vo/vo_benefit.dart';
import 'package:velocity_x/velocity_x.dart';

class BenefitItem extends StatelessWidget {
  final Benefit benefit;
  const BenefitItem({super.key, required this.benefit});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(benefit.imagePath, width: 50, height: 50,),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            benefit.subTitle.text.size(13).make(),
            SizedBox(height: 5),
            benefit.title.text.color(Colors.blue).size(13).make()
          ],
        )
      ],
    ).pSymmetric(v: 20);
  }
}
