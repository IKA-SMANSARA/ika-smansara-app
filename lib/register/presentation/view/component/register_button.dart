import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/l10n/l10n.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({this.onSubmitted, super.key});

  final VoidCallback? onSubmitted;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF104993),
        minimumSize: Size(350.w, 36.h),
        padding: EdgeInsets.symmetric(horizontal: 16.w),
      ),
      onPressed: onSubmitted,
      child: Text(
        l10n.registerTitle,
        style: GoogleFonts.inter(
          color: Colors.white,
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
