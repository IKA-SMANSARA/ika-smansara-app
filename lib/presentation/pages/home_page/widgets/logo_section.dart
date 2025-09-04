import 'package:flutter/material.dart';
import 'package:ika_smansara/gen/assets.gen.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Assets.images.logoIkaSmansaraColored.svg(
            height: 80,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}