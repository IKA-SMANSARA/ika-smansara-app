import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/l10n/l10n.dart';
import 'package:ika_smansara/register/register.dart';

class RegisterPortraitScreen extends StatelessWidget {
  const RegisterPortraitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return GestureDetector(
      onVerticalDragDown: (_) => keyboardDismiss(context),
      onTap: () => keyboardDismiss(context),
      onHorizontalDragDown: (_) => keyboardDismiss(context),
      child: Scaffold(
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
        body: ListView(
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: const RegisterFormField(),
            ),
          ],
        ),
      ),
    );
  }
}
