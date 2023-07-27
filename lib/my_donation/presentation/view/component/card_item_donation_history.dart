import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CardItemDonationHistory extends StatelessWidget {
  const CardItemDonationHistory({
    required this.onPress,
    required this.campaignTitle,
    required this.createdDonationAt,
    required this.donationAmount,
    required this.campaignImage,
    super.key,
  });

  final VoidCallback? onPress;
  final String? campaignTitle;
  final String? createdDonationAt;
  final String? donationAmount;
  final Widget? campaignImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: SizedBox(
        height: 150.h,
        width: double.infinity,
        child: Card(
          elevation: 4.w,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.w),
          ),
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 1 / 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.w),
                  child: campaignImage ?? const Placeholder(),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.w),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            createdDonationAt ?? '',
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Rp. $donationAmount',
                            style: GoogleFonts.inter(
                              color: const Color(0xFF104993),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
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
