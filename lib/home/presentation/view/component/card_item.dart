import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ika_smansara/l10n/l10n.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    required this.onPress,
    required this.campaignTitle,
    required this.campaignDonationCollected,
    required this.campaignDuration,
    required this.campaignProgressIndicator,
    required this.campaignImage,
    super.key,
  });

  final VoidCallback? onPress;
  final String? campaignTitle;
  final String? campaignDuration;
  final String? campaignDonationCollected;
  final double? campaignProgressIndicator;
  final Widget? campaignImage;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return SizedBox(
      width: 255.w,
      child: Card(
        elevation: 4.w,
        color: Colors.amber,
        child: Stack(
          children: [
            campaignImage ?? const Placeholder(),
            Padding(
              padding: EdgeInsets.only(
                top: 125.w,
              ),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        campaignTitle ?? '',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        l10n.collectedTitle,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10.sp,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 2.w,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Rp.$campaignDonationCollected',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              campaignDuration ?? '',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      LinearProgressIndicator(
                        value: campaignProgressIndicator ?? 0.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
