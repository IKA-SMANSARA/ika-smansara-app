import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/detail_campaign/detail_campaign.dart';

class MainContent extends StatelessWidget {
  const MainContent({required this.detailCampaignDocumentResponse, super.key});

  final DetailCampaignDocumentResponse detailCampaignDocumentResponse;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF104993),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              color: Colors.white,
            ),
          ),
        ],
        title: Text(
          detailCampaignDocumentResponse.campaignName?.toUpperCase() ?? '',
          style: GoogleFonts.inter(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl: detailCampaignDocumentResponse.photoThumbnail ?? '',
              fit: BoxFit.cover,
              placeholder: (context, url) => const LinearProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.h,
                    ),
                    child: Text(
                      detailCampaignDocumentResponse.campaignName ?? '',
                      style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Text(
                    'Terkumpul',
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: currencyFormatter(
                                  detailCampaignDocumentResponse
                                          .currentAmount ??
                                      0,
                                ),
                                style: GoogleFonts.inter(
                                  color: const Color(0xFFD52014),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: ' dari ',
                                style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: currencyFormatter(
                                  detailCampaignDocumentResponse.goalAmount ??
                                      0,
                                ),
                                style: GoogleFonts.inter(
                                  color: const Color(0xFF104993),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          getRemainingDays(
                            detailCampaignDocumentResponse.dateEndCampaign,
                          ),
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  LinearProgressIndicator(
                    value: getCampaignProgressIndicatorValue(
                      detailCampaignDocumentResponse.goalAmount ?? 0,
                      detailCampaignDocumentResponse.currentAmount ?? 0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.person,
                              size: 16.sp,
                            ),
                            Text(
                              detailCampaignDocumentResponse.backerCount
                                      ?.toString() ??
                                  '0',
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
                        Row(
                          children: [
                            Text(
                              'Rincian Dana ',
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 16.sp,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
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
                  const Divider(
                    color: Color(0xFFD9D9D9),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: Text(
                      'Tentang Penggalanan Dana',
                      style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: Text(
                      detailCampaignDocumentResponse.campaignDescription ?? '',
                      style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: const DonaturListHeader(),
                  ),
                  const DonaturShortList(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    child: const DonateButton(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
