import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CardItemCampaign extends StatelessWidget {
  const CardItemCampaign({
    required this.onPress,
    required this.campaignTitle,
    required this.campaignImage,
    required this.donationAmount,
    required this.donationDuration,
    required this.campaignProgressIndicator,
    super.key,
  });

  final VoidCallback? onPress;
  final String? campaignTitle;
  final Widget? campaignImage;
  final String? donationAmount;
  final String? donationDuration;
  final double? campaignProgressIndicator;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: SizedBox(
        height: 100.h,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.r),
                        child: campaignImage ?? const Placeholder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          campaignTitle ?? '',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Terkumpul',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: 8.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  donationAmount ?? '',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  style: GoogleFonts.inter(
                                    color: const Color(0xFF104993),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  donationDuration ?? '',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            LinearProgressIndicator(
                              value: campaignProgressIndicator,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Divider(
                color: Colors.blueGrey.withAlpha(150),
                thickness: 0.5.h,
                height: 0.5.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
