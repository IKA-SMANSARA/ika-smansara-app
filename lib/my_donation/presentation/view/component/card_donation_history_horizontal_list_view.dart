import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ika_smansara/gen/assets.gen.dart';
import 'package:ika_smansara/my_donation/my_donation.dart';

class CardDonationHistoryHorizontalListView extends StatelessWidget {
  const CardDonationHistoryHorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.all(16.w),
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
          campaignImage: Assets.images.volunteerDancingVillage.image(
            fit: BoxFit.cover,
          ),
          createdDonationAt: '1 hari lalu',
          donationAmount: '50000',
        ),
      ],
    );
  }
}
