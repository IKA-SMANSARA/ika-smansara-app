import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/gen/assets.gen.dart';

class AccountUserProfile extends StatelessWidget {
  const AccountUserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 36.h),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100.h,
              child: CircleAvatar(
                minRadius: 10.w,
                maxRadius: 50.w,
                backgroundImage: Assets.images.donate.provider(),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 8.h,
              ),
              child: Text(
                'Nama Pengguna',
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
