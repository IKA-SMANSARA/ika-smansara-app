import 'package:flutter/material.dart';
import 'package:ika_smansara/gen/assets.gen.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';

Widget headerImageLogo({
  required BuildContext context,
}) =>
    Assets.images.ikaSmansaraHeaderHome.svg(
      height: headerImageLogoHeight(context),
    );
