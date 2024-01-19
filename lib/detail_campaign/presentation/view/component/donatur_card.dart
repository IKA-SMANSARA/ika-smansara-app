import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/utils/extension.dart';
import 'package:ika_smansara/gen/assets.gen.dart';

class DonaturCard extends StatelessWidget {
  const DonaturCard({this.name, this.createdAt, this.amount, super.key});

  final String? name;
  final String? createdAt;
  final int? amount;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 40.h,
                  child: CircleAvatar(
                    minRadius: 10.w,
                    maxRadius: 30.w,
                    backgroundImage: Assets.images.donate.provider(),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name ?? '-',
                      style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      countDays(createdAt ?? ''),
                      style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              currencyFormatter(
                amount ?? 0,
              ),
              style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
