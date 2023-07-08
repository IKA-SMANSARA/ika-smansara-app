import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ika_smansara/common/common.dart';

class Routes {
  static const root = '/';

  static Widget errorWidget(BuildContext context, GoRouterState state) =>
      const NotFoundPage();
}
