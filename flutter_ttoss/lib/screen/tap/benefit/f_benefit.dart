import 'package:flutter/material.dart';
import 'package:flutter_ttoss/screen/tap/benefit/w_point_button.dart';
import 'package:velocity_x/velocity_x.dart';

class BenefitFragment extends StatefulWidget {
  const BenefitFragment({super.key});

  @override
  State<BenefitFragment> createState() => _BenefitFragmentState();
}

class _BenefitFragmentState extends State<BenefitFragment> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          "혜택".text.white.bold.size(10).make(),
          PointButton(point: 542)
        ],
      ).pSymmetric(h: 20),
    );
  }
}
