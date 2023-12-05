import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
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
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: const Icon(
        //       Icons.share,
        //       color: Colors.white,
        //     ),
        //   ),
        // ],
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
                  DetailAmountDonation(
                    backerCount:
                        detailCampaignDocumentResponse.backerCount.toString(),
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
                    child: ExpandableText(
                      detailCampaignDocumentResponse.campaignDescription ?? '',
                      style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.justify,
                      expandText: 'Baca selengkapnya',
                      collapseOnTextTap: true,
                      expandOnTextTap: true,
                      linkColor: const Color(0xFF104993),
                      animation: true,
                      maxLines: 4,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: DonaturListHeader(
                      backerCount:
                          detailCampaignDocumentResponse.backerCount ?? 0,
                    ),
                  ),
                  DonaturShortList(
                    backerCount:
                        detailCampaignDocumentResponse.backerCount ?? 0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    child: DonateButton(
                      campaignStatus:
                          detailCampaignDocumentResponse.isActive ?? false,
                      documentId: detailCampaignDocumentResponse.id ?? '',
                      campaignName:
                          detailCampaignDocumentResponse.campaignName ?? '',
                      campaignImage:
                          detailCampaignDocumentResponse.photoThumbnail ?? '',
                    ),
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
