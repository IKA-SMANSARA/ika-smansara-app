import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/gen/assets.gen.dart';
import 'package:ika_smansara/home/home.dart';
import 'package:ika_smansara/l10n/l10n.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return GridView.count(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
      crossAxisCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        CategoryItem(
          onPress: () => context.pushNamed(
            Routes.listCampaignPerCategory,
            queryParameters: {
              Constants.categoryNameKey: l10n.scholarshipTitle.toUpperCase(),
            },
          ),
          categoryIcon: Assets.images.graduationCap.svg(),
          categoryTitle: l10n.scholarshipTitle.toUpperCase(),
        ),
        CategoryItem(
          onPress: () => context.pushNamed(
            Routes.listCampaignPerCategory,
            queryParameters: {
              Constants.categoryNameKey: l10n.yatamadhuafaTitle.toUpperCase(),
            },
          ),
          categoryIcon: Assets.images.childSafeZone.svg(),
          categoryTitle: l10n.yatamadhuafaTitle.toUpperCase(),
        ),
        CategoryItem(
          onPress: () => context.pushNamed(
            Routes.listCampaignPerCategory,
            queryParameters: {
              Constants.categoryNameKey: l10n.educationTitle.toUpperCase(),
            },
          ),
          categoryIcon: Assets.images.classroom.svg(),
          categoryTitle: l10n.educationTitle.toUpperCase(),
        ),
        CategoryItem(
          onPress: () => context.pushNamed(
            Routes.listCampaignPerCategory,
            queryParameters: {
              Constants.categoryNameKey: l10n.orphanageTitle.toUpperCase(),
            },
          ),
          categoryIcon: Assets.images.house.svg(),
          categoryTitle: l10n.orphanageTitle.toUpperCase(),
        ),
        CategoryItem(
          onPress: () => context.pushNamed(
            Routes.listCampaignPerCategory,
            queryParameters: {
              Constants.categoryNameKey: l10n.humanityTitle.toUpperCase(),
            },
          ),
          categoryIcon: Assets.images.trust.svg(),
          categoryTitle: l10n.humanityTitle.toUpperCase(),
        ),
        CategoryItem(
          onPress: () => context.pushNamed(
            Routes.listCampaignPerCategory,
            queryParameters: {
              Constants.categoryNameKey:
                  l10n.naturaldisastersTitle.toUpperCase(),
            },
          ),
          categoryIcon: Assets.images.factoryBreakdown.svg(),
          categoryTitle: l10n.naturaldisastersTitle.toUpperCase(),
        ),
        CategoryItem(
          onPress: () => context.pushNamed(
            Routes.listCampaignPerCategory,
            queryParameters: {
              Constants.categoryNameKey: l10n.worshipplaceTitle.toUpperCase(),
            },
          ),
          categoryIcon: Assets.images.pray1.svg(),
          categoryTitle: l10n.worshipplaceTitle.toUpperCase(),
        ),
        CategoryItem(
          onPress: () => context.pushNamed(
            Routes.listCampaignPerCategory,
            queryParameters: {
              Constants.categoryNameKey: l10n.neighborhoodTitle.toUpperCase(),
            },
          ),
          categoryIcon: Assets.images.oakTree.svg(),
          categoryTitle: l10n.neighborhoodTitle.toUpperCase(),
        ),
        CategoryItem(
          onPress: () => context.pushNamed(
            Routes.listCampaignPerCategory,
            queryParameters: {
              Constants.categoryNameKey: l10n.disabilityTitle.toUpperCase(),
            },
          ),
          categoryIcon: Assets.images.wheelchair1.svg(),
          categoryTitle: l10n.disabilityTitle.toUpperCase(),
        ),
        CategoryItem(
          onPress: () => context.pushNamed(
            Routes.listCampaignPerCategory,
            queryParameters: {
              Constants.categoryNameKey: l10n.medicalhealthTitle.toUpperCase(),
            },
          ),
          categoryIcon: Assets.images.heartWithPulse.svg(),
          categoryTitle: l10n.medicalhealthTitle.toUpperCase(),
        ),
      ],
    );
  }
}
