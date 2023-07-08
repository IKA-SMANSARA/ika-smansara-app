import 'package:flutter/material.dart';
import 'package:ika_smansara/common/view/utils/adaptive_responsive_utils/minimum_screen_size.dart';

class ResponsivePortraitScreen extends StatelessWidget {
  const ResponsivePortraitScreen({
    super.key,
    this.smallScreen,
    this.mediumScreen,
    this.expandedScreen,
  });

  final Widget? smallScreen;
  final Widget? mediumScreen;
  final Widget? expandedScreen;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < MinimumScreenSize.smallScreenWidth) {
          return smallScreen ?? Text('${constraints.maxWidth}');
        }

        if (constraints.maxWidth >= MinimumScreenSize.expandedScreenWidth) {
          return expandedScreen ?? Text('${constraints.maxWidth}');
        }

        if (MinimumScreenSize.smallScreenWidth <= constraints.maxWidth &&
            constraints.maxWidth < MinimumScreenSize.expandedScreenWidth) {
          return mediumScreen ?? Text('${constraints.maxWidth}');
        }

        return Text('${constraints.maxWidth}');
      },
    );
  }
}
