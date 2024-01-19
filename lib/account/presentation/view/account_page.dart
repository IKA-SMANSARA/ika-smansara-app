import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:flutter/material.dart';
import 'package:ika_smansara/account/account.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: AdaptiveScreen(
        androidScreen: AccountPortraitScreen(),
      ),
    );
  }
}
