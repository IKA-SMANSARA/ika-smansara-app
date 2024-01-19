import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/common.dart';

class ButtonDonateAgain extends StatelessWidget {
  const ButtonDonateAgain(this.campaignId, {super.key});

  final String campaignId;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF104993),
        minimumSize: Size(350.w, 36.h),
        padding: EdgeInsets.symmetric(horizontal: 16.w),
      ),
      onPressed: () => context.pushNamed(
        Routes.detailCampaign,
        queryParameters: {
          // Constants.idCampaignKey: state.listCampaigns?[index].id,
          Constants.idCampaignKey: campaignId,
        },
      ),
      child: Text(
        'Donasi Lagi',
        style: GoogleFonts.inter(
          color: Colors.white,
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
