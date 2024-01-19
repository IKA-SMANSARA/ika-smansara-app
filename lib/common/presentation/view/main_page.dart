import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:flutter/material.dart';
import 'package:ika_smansara/common/common.dart';

class MainPage extends StatelessWidget {
  const MainPage({required this.screen, super.key});

  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AdaptiveScreen(
        androidScreen: MainPortraitScreen(
          screen: screen,
        ),
      ),
    );
  }
}
