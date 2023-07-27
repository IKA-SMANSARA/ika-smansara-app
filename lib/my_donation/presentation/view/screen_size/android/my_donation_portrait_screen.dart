import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/gen/assets.gen.dart';
import 'package:ika_smansara/l10n/l10n.dart';
import 'package:ika_smansara/my_donation/my_donation.dart';

class MyDonationPortraitScreen extends StatelessWidget {
  const MyDonationPortraitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.w,
        shadowColor: Colors.transparent,
        backgroundColor: const Color(0xFF104993),
        title: Center(
          child: Text(
            l10n.myDonationBottomNavTitle,
            style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Assets.images.donate.image(
              fit: BoxFit.cover,
              height: 160.h,
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.all(
                16.w,
              ),
              child: Text(
                l10n.donationHistoryTitle,
                style: GoogleFonts.inter(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            CardItemDonationHistory(
              onPress: () {},
              campaignTitle:
                  'SEDEKAH JUMAT BERKAH UNTUK ANAK YATIM PIATU DAN DHUAFA',
              campaignImage: Assets.images.volunteerDancingVillage.image(),
              createdDonationAt: '1 hari lalu',
            ),
          ],
        ),
      ),
    );
  }
}
