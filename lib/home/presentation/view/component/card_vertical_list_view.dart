import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ika_smansara/gen/assets.gen.dart';
import 'package:ika_smansara/home/home.dart';

class CardVerticalListView extends StatelessWidget {
  const CardVerticalListView({
    required this.listTitle,
    required this.buttonTitle,
    super.key,
  });

  final String? listTitle;
  final String? buttonTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 250.h,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  listTitle ?? '',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    buttonTitle ?? '',
                    style: TextStyle(
                      color: const Color(0xFF104993),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 8.h,
            ),
            child: SizedBox(
              height: 215.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CardItem(
                    onPress: () {},
                    campaignTitle:
                        'SEDEKAH JUMAT BERKAH UNTUK ANAK YATIM PIATU',
                    campaignDonationCollected: '1.999.000',
                    campaignDuration: '5 hari lagi',
                    campaignProgressIndicator: 0.65,
                    campaignImage: Assets.images.imgPp.image(
                      fit: BoxFit.cover,
                    ),
                  ),
                  CardItem(
                    onPress: () {},
                    campaignTitle:
                        'SEDEKAH JUMAT BERKAH UNTUK ANAK YATIM PIATU',
                    campaignDonationCollected: '1.999.000',
                    campaignDuration: '5 hari lagi',
                    campaignProgressIndicator: 0.65,
                    campaignImage: Assets.images.imgPp.image(
                      fit: BoxFit.cover,
                    ),
                  ),
                  CardItem(
                    onPress: () {},
                    campaignTitle:
                        'SEDEKAH JUMAT BERKAH UNTUK ANAK YATIM PIATU',
                    campaignDonationCollected: '1.999.000',
                    campaignDuration: '5 hari lagi',
                    campaignProgressIndicator: 0.65,
                    campaignImage: Assets.images.imgPp.image(
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
