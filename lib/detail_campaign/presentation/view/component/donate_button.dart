import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/common.dart';

class DonateButton extends StatelessWidget {
  const DonateButton({
    required this.campaignStatus,
    required this.documentId,
    super.key,
  });

  final bool campaignStatus;
  final String documentId;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF104993),
        minimumSize: Size(350.w, 36.h),
        padding: EdgeInsets.symmetric(horizontal: 16.w),
      ),
      onPressed: !campaignStatus
          ? null
          : () => context.pushNamed(
                Routes.paymentGateway,
              ),
      child: Text(
        'Kirim Donasi',
        style: GoogleFonts.inter(
          color: Colors.white,
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
