import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/list_campaign_per_category/list_campaign_per_category.dart';

class ListCampaignPerCategoryPage extends StatelessWidget {
  const ListCampaignPerCategoryPage({required this.categoryName, super.key});

  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
      body: BlocProvider(
        create: (_) => CampaignsBloc(),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardCarousel(categoryName: categoryName),
              Padding(
                padding: EdgeInsets.all(16.h),
                child: ListCardCampaign(
                  categoryName: categoryName,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
