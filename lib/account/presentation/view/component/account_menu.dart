import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountMenu extends StatelessWidget {
  const AccountMenu({
    required this.menuTitle,
    required this.menuIcon,
    required this.onPress,
    super.key,
  });

  final VoidCallback? onPress;
  final String? menuTitle;
  final Widget? menuIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    menuIcon ?? const Placeholder(),
                    Padding(
                      padding: EdgeInsets.all(8.w),
                      child: Text(
                        menuTitle ?? '',
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            child: Divider(
              color: Colors.blueGrey.withAlpha(150),
              thickness: 0.5.h,
              height: 0.5.h,
            ),
          ),
        ],
      ),
    );
  }
}
