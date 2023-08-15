import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/gen/assets.gen.dart';
import 'package:ika_smansara/list_campaign_per_category/list_campaign_per_category.dart';

class ListCardCampaign extends StatelessWidget {
  const ListCardCampaign({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        CardItemCampaign(
          onPress: () => context.pushNamed(
            Routes.detailCampaign,
            queryParameters: {Constants.idCampaignKey: '1'},
          ),
          campaignTitle:
              'SEDEKAH JUMAT BERKAH UNTUK ANAK YATIM PIATU DAN DHUAFA',
          campaignImage: Assets.images.children.image(
            fit: BoxFit.cover,
          ),
          donationAmount: 'Rp. 1.000.000',
          donationDuration: '7 hari lagi',
          campaignProgressIndicator: 0.45,
        ),
        CardItemCampaign(
          onPress: () => context.pushNamed(
            Routes.detailCampaign,
            queryParameters: {Constants.idCampaignKey: '2'},
          ),
          campaignTitle:
              'SEDEKAH JUMAT BERKAH UNTUK ANAK YATIM PIATU DAN DHUAFA',
          campaignImage: Assets.images.children.image(
            fit: BoxFit.cover,
          ),
          donationAmount: 'Rp. 1.000.000',
          donationDuration: '7 hari lagi',
          campaignProgressIndicator: 0.45,
        ),
      ],
    );
  }
}
