import 'package:flutter/material.dart';
import 'package:ika_smansara/gen/assets.gen.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';

Widget headerImageLogo({
  required BuildContext context,
}) =>
    Center(
      child: Assets.images.ikaSmansaraHeaderHome.svg(
        width: double.infinity,
        height: headerImageLogoHeight(context),
      ),
    );
