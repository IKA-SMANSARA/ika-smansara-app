import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateCampaignButton extends StatelessWidget {
  const CreateCampaignButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFD52014),
        minimumSize: Size(288.w, 36.h),
        padding: EdgeInsets.symmetric(horizontal: 16.w),
      ),
      onPressed: () {},
      child: Text(
        'Buat Galang Dana',
        style: GoogleFonts.inter(
          color: Colors.white,
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
