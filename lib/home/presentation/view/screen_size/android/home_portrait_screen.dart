import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ika_smansara/gen/assets.gen.dart';
import 'package:ika_smansara/home/home.dart';
import 'package:ika_smansara/l10n/l10n.dart';

class HomePortraitScreen extends StatelessWidget {
  const HomePortraitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Stack(
          children: [
            Container(
              height: 150.h,
              decoration: const BoxDecoration(color: Color(0xFF104993)),
            ),
            BlocProvider(
              create: (_) => CategoriesBloc(),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 8.h,
                    ),
                    child: Assets.images.ikaSmansaraHeaderHome.svg(
                      width: double.infinity,
                      height: 32.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.h,
                    ),
                    child: const CardCarousel(),
                  ),
                  const Categories(),
                  Padding(
                    padding: EdgeInsets.all(16.h),
                    child: Divider(
                      color: Colors.blueGrey.withAlpha(150),
                      thickness: 0.5.h,
                      height: 0.5.h,
                    ),
                  ),
                  CardVerticalListView(
                    listTitle: l10n.needHelpTitle,
                    buttonTitle: l10n.seeMoreTitle,
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.h),
                    child: Divider(
                      color: Colors.blueGrey.withAlpha(150),
                      thickness: 0.5.h,
                      height: 0.5.h,
                    ),
                  ),
                  CardVerticalListView(
                    listTitle: l10n.programTitle,
                    buttonTitle: l10n.seeMoreTitle,
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.h),
                    child: Divider(
                      color: Colors.blueGrey.withAlpha(150),
                      thickness: 0.5.h,
                      height: 0.5.h,
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
