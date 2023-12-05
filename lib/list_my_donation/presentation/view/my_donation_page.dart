import 'package:flutter/material.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/list_my_donation/list_my_donation.dart';

class MyDonationPage extends StatelessWidget {
  const MyDonationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: AdaptiveScreen(
        androidScreen: MyDonationPortraitScreen(),
      ),
    );
  }
}