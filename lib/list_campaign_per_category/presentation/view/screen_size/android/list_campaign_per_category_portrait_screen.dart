import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/gen/assets.gen.dart';
import 'package:ika_smansara/list_campaign_per_category/list_campaign_per_category.dart';

class ListCampaignPerCategoryPortraitScreen extends StatelessWidget {
  const ListCampaignPerCategoryPortraitScreen({
    required this.categoryName,
    super.key,
  });

  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF104993),
        title: Text(
          categoryName.toUpperCase(),
          style: GoogleFonts.inter(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Assets.images.deathCub.image(
              fit: BoxFit.cover,
              height: 160.h,
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.all(16.h),
              child: const ListCardCampaign(),
            ),
          ],
        ),
      ),
    );
  }
}
