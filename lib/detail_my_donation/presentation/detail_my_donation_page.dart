import 'package:flutter/material.dart';
import 'package:ika_smansara/common/presentation/utils/adaptive_responsive_utils/adaptive_screen.dart';
import 'package:ika_smansara/detail_my_donation/detail_my_donation.dart';

class DetailMyDonationPage extends StatelessWidget {
  const DetailMyDonationPage({required this.myDonationId, super.key});

  final String? myDonationId;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AdaptiveScreen(
        androidScreen: DetailMyDonationPortraitScreen(
          myDonationId: myDonationId,
        ),
      ),
    );
  }
}
