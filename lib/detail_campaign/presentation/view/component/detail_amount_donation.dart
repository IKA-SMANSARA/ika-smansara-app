import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailAmountDonation extends StatelessWidget {
  const DetailAmountDonation({required this.backerCount, super.key});

  final String backerCount;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      childrenPadding: EdgeInsets.zero,
      tilePadding: EdgeInsets.zero,
      title: Row(
        children: [
          Icon(
            Icons.person,
            size: 16.sp,
          ),
          Gap(4.w),
          Text(
            backerCount,
            style: GoogleFonts.inter(
              color: Colors.black,
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            ' orang telah berdonasi',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 8.h),
          child: Container(
            decoration: ShapeDecoration(
              color: const Color(0x7FD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Dana untuk penggalang dana',
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Rp. 9.000.000',
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Biaya transaksi pihak ketiga',
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '- Rp. 500.000',
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Dana Bersih',
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Rp. 8.500.000',
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
