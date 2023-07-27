import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/l10n/l10n.dart';

class CardItemCampaign extends StatelessWidget {
  const CardItemCampaign({
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
    return GestureDetector(
      onTap: onPress,
      child: Card(
        elevation: 4.w,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.w),
        ),
        child: AspectRatio(
          aspectRatio: 3 / 2,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.w),
                child: campaignImage ?? const Placeholder(),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        campaignTitle ?? '',
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 8.h,
                          bottom: 4.h,
                        ),
                        child: Text(
                          l10n.collectedTitle,
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 10.sp,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 4.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Rp.$campaignDonationCollected',
                              style: GoogleFonts.inter(
                                color: Colors.blue,
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              campaignDuration ?? '',
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: 10.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      LinearProgressIndicator(
                        value: campaignProgressIndicator,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
