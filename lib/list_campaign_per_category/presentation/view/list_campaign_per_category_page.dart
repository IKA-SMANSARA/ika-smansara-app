import 'package:flutter/material.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/list_campaign_per_category/presentation/view/screen_size/android/list_campaign_per_category_portrait_screen.dart';

class ListCampaignPerCategoryPage extends StatelessWidget {
  const ListCampaignPerCategoryPage({required this.categoryName, super.key});

  final String? categoryName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AdaptiveScreen(
        androidScreen: ListCampaignPerCategoryPortraitScreen(
          categoryName: categoryName ?? Constants.blankString,
        ),
      ),
    );
  }
}
