import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ika_smansara/detail_campaign/detail_campaign.dart';

class DonaturShortList extends StatelessWidget {
  const DonaturShortList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView(
        children: const [
          DonaturCard(),
          DonaturCard(),
          DonaturCard(),
        ],
      ),
    );
  }
}
