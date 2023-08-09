import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ika_smansara/common/common.dart';

class Routes {
  static const detailCampaign = '/detail-campaign';
  static const login = '/login';
  static const register = '/register';
  static const counter = '/counter-app';
  static const home = '/home';
  static const myDonation = '/my-donation';
  static const account = '/account';
  static const paymentGateway = '/payment-gateway';
  static const selectPaymentMethod = '/select-payment-method';
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
