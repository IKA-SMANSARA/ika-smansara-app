import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ika_smansara/common/common.dart';

class Routes {
  static const detailMyDonation = '/detail-my-donation';
  static const createCampaign = '/create-campaign';
  static const detailCampaign = '/detail-campaign';
  static const login = '/login';
  static const register = '/register';
  static const counter = '/counter-app';
  static const home = '/home';
  static const myDonation = '/my-donation';
  static const account = '/account';
  static const listCampaignPerCategory = '/list-campaign-per-category';
  static const paymentGateway = '/payment-gateway';
  static const paymentWindowWebView = '/payment-window-web-view';
  static const listBacker = '/list-backer';

  static Widget errorWidget(BuildContext context, GoRouterState state) =>
      const NotFoundPage();
}
