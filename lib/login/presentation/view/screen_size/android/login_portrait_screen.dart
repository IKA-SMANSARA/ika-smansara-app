import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/gen/assets.gen.dart';
import 'package:ika_smansara/l10n/l10n.dart';
import 'package:ika_smansara/login/login.dart';

class LoginPortraitScreen extends StatelessWidget {
  const LoginPortraitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return GestureDetector(
      onTap: () => keyboardDismiss(context),
      child: Scaffold(
        body: Center(
          child: ListView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            shrinkWrap: true,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.h),
                child: Assets.images.logoIkaSmansaraColored.svg(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                ),
                child: Text(
                  l10n.welcome,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 20.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.w),
                child: const LoginForm(),
              ),
              Padding(
                padding: EdgeInsets.all(16.w),
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: l10n.accountQuestion,
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: l10n.registerTitle,
                          style: GoogleFonts.inter(
                            color: const Color(0xFF104993),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => context.push(Routes.register),
                        ),
                      ],
                    ),
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
