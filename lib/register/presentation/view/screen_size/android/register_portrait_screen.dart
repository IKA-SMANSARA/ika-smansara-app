import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/l10n/l10n.dart';

class RegisterPortraitScreen extends StatelessWidget {
  const RegisterPortraitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF104993),
        title: Text(
          l10n.registerTitle,
          style: GoogleFonts.inter(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () => keyboardDismiss(context),
        child: Center(
          child: ListView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            shrinkWrap: true,
            children: [
              Padding(
                padding: EdgeInsets.all(16.w),
                child: Text(
                  'Mari mulai berbagi kebaikan untuk sesama',
                  style: GoogleFonts.inter(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.h),
                child: Divider(
                  color: Colors.blueGrey.withAlpha(150),
                  thickness: 0.5.h,
                  height: 0.5.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
