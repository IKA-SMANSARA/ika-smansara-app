import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:flutter/material.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/detail_campaign/detail_campaign.dart';

class DetailCampaignPage extends StatelessWidget {
  const DetailCampaignPage({required this.idCampaign, super.key});

  final String? idCampaign;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AdaptiveScreen(
        androidScreen: DetailCampaignPortraitScreen(
          idCampaign: idCampaign ?? Constants.blankString,
        ),
      ),
    );
  }
}
