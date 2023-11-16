import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ika_smansara/detail_campaign/detail_campaign.dart';

class DonaturShortList extends StatelessWidget {
  const DonaturShortList({required this.backerCount, super.key});

  final int backerCount;

  @override
  Widget build(BuildContext context) {
    if (backerCount != 0) {
      return SizedBox(
        height: 200.h,
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            DonaturCard(),
            DonaturCard(),
            DonaturCard(),
          ],
        ),
      );
    } else {
      return Container();
    }
  }
}
