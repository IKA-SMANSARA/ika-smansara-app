import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ika_smansara/common/common.dart';

class Routes {
  static const root = '/';
  static const paymentWindowWebView = '/payment-window-web-view';
  static const redirect = '/redirect'; // deeplink for payment gateway route
  static const returnRoute = '/return'; // deeplink for payment gateway route
  static const callbackPayment =
      '/callback'; // deeplink for payment gateway route
  static const callbackPageEmailVerification =
      '/callback-page'; // deeplink for email verification

  static Widget errorWidget(BuildContext context, GoRouterState state) =>
      const NotFoundPage();
}
