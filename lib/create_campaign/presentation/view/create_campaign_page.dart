import 'package:flutter/material.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/create_campaign/create_campaign.dart';

class CreateCampaignPage extends StatelessWidget {
  const CreateCampaignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: AdaptiveScreen(
        androidScreen: CreateCampaignPortraitScreen(),
      ),
    );
  }
}
