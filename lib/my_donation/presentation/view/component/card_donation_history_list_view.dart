import 'package:flutter/material.dart';
import 'package:ika_smansara/gen/assets.gen.dart';
import 'package:ika_smansara/my_donation/my_donation.dart';

class CardDonationHistoryListView extends StatelessWidget {
  const CardDonationHistoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        CardItemDonationHistory(
          onPress: () {},
          campaignTitle:
              'SEDEKAH JUMAT BERKAH UNTUK ANAK YATIM PIATU DAN DHUAFA',
          campaignImage: Assets.images.volunteerDancingVillage.image(
            fit: BoxFit.cover,
          ),
          createdDonationAt: '1 hari lalu',
          donationAmount: '50000',
        ),
        CardItemDonationHistory(
          onPress: () {},
          campaignTitle:
              'SEDEKAH JUMAT BERKAH UNTUK ANAK YATIM PIATU DAN DHUAFA',
          campaignImage: Assets.images.children.image(
            fit: BoxFit.cover,
          ),
          createdDonationAt: '1 hari lalu',
          donationAmount: '50000',
        ),
        CardItemDonationHistory(
          onPress: () {},
          campaignTitle:
              'SEDEKAH JUMAT BERKAH UNTUK ANAK YATIM PIATU DAN DHUAFA',
          campaignImage: Assets.images.deathCub.image(
            fit: BoxFit.cover,
          ),
          createdDonationAt: '1 hari lalu',
          donationAmount: '50000',
        ),
        CardItemDonationHistory(
          onPress: () {},
          campaignTitle:
              'SEDEKAH JUMAT BERKAH UNTUK ANAK YATIM PIATU DAN DHUAFA',
          campaignImage: Assets.images.donation1.image(
            fit: BoxFit.cover,
          ),
          createdDonationAt: '1 hari lalu',
          donationAmount: '50000',
        ),
        CardItemDonationHistory(
          onPress: () {},
          campaignTitle:
              'SEDEKAH JUMAT BERKAH UNTUK ANAK YATIM PIATU DAN DHUAFA',
          campaignImage: Assets.images.donate.image(
            fit: BoxFit.cover,
          ),
          createdDonationAt: '1 hari lalu',
          donationAmount: '50000',
        ),
      ],
    );
  }
}
