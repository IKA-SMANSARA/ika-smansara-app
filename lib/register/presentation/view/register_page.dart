import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:flutter/material.dart';
import 'package:ika_smansara/register/register.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: AdaptiveScreen(
        androidScreen: RegisterPortraitScreen(),
      ),
    );
  }
}
