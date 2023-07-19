import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ika_smansara/gen/assets.gen.dart';
import 'package:ika_smansara/home/home.dart';
import 'package:ika_smansara/l10n/l10n.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                CategoryItem(
                  onPress: () {},
                  categoryIcon: Assets.images.graduationCap.image(
                    scale: 0.5.h,
                  ),
                  categoryTitle: l10n.scholarshipTitle.toUpperCase(),
                ),
                CategoryItem(
                  onPress: () {},
                  categoryIcon: Assets.images.childSafeZone.image(
                    scale: 0.5.h,
                  ),
                  categoryTitle: l10n.yatamadhuafaTitle.toUpperCase(),
                ),
                CategoryItem(
                  onPress: () {},
                  categoryIcon: Assets.images.classroom.image(
                    scale: 0.5.h,
                  ),
                  categoryTitle: l10n.educationTitle.toUpperCase(),
                ),
                CategoryItem(
                  onPress: () {},
                  categoryIcon: Assets.images.house.image(
                    scale: 0.5.h,
                  ),
                  categoryTitle: l10n.orphanageTitle.toUpperCase(),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                CategoryItem(
                  onPress: () {},
                  categoryIcon: Assets.images.trust.image(
                    scale: 0.5.h,
                  ),
                  categoryTitle: l10n.humanityTitle.toUpperCase(),
                ),
                CategoryItem(
                  onPress: () {},
                  categoryIcon: Assets.images.factoryBreakdown.image(
                    scale: 0.5.h,
                  ),
                  categoryTitle: l10n.naturaldisastersTitle.toUpperCase(),
                ),
                CategoryItem(
                  onPress: () {},
                  categoryIcon: Assets.images.pray1.image(
                    scale: 0.5.h,
                  ),
                  categoryTitle: l10n.worshipplaceTitle.toUpperCase(),
                ),
                CategoryItem(
                  onPress: () {},
                  categoryIcon: Assets.images.oakTree.image(
                    scale: 0.5.h,
                  ),
                  categoryTitle: l10n.neighborhoodTitle.toUpperCase(),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                CategoryItem(
                  onPress: () {},
                  categoryIcon: Assets.images.wheelchair1.image(
                    scale: 0.5.h,
                  ),
                  categoryTitle: l10n.disabilityTitle.toUpperCase(),
                ),
                CategoryItem(
                  onPress: () {},
                  categoryIcon: Assets.images.heartWithPulse.image(
                    scale: 0.5.h,
                  ),
                  categoryTitle: l10n.medicalhealthTitle.toUpperCase(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
