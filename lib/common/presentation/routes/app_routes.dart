import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ika_smansara/account/account.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/counter/counter.dart';
import 'package:ika_smansara/detail_campaign/detail_campaign.dart';
import 'package:ika_smansara/home/home.dart';
import 'package:ika_smansara/list_campaign_per_category/list_campaign_per_category.dart';
import 'package:ika_smansara/login/login.dart';
import 'package:ika_smansara/my_donation/my_donation.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';
import 'package:ika_smansara/register/register.dart';

class AppRoutes {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(
    initialLocation: Routes.login,
    debugLogDiagnostics: true,
    routerNeglect: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return BlocProvider(
            create: (_) => NavigationCubit(),
            child: MainPage(
              screen: child,
            ),
          );
        },
        routes: [
          GoRoute(
            name: Routes.home,
            path: Routes.home,
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            name: Routes.myDonation,
            path: Routes.myDonation,
            builder: (context, state) => const MyDonationPage(),
          ),
          GoRoute(
            name: Routes.account,
            path: Routes.account,
            builder: (context, state) => const AccountPage(),
          ),
        ],
      ),
      GoRoute(
        name: Routes.register,
        path: Routes.register,
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) => const RegisterPage(),
      ),
      GoRoute(
        name: Routes.login,
        path: Routes.login,
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        name: Routes.listCampaignPerCategory,
        path: Routes.listCampaignPerCategory,
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) {
          return ListCampaignPerCategoryPage(
            categoryName: state.uri.queryParameters[Constants.categoryNameKey],
          );
        },
      ),
      GoRoute(
        name: Routes.detailCampaign,
        path: Routes.detailCampaign,
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) {
          return DetailCampaignPage(
            idCampaign: state.uri.queryParameters[Constants.idCampaignKey],
          );
        },
      ),
      GoRoute(
        name: Routes.counter,
        path: Routes.counter,
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) => const CounterPage(),
      ),
      GoRoute(
        name: Routes.paymentGateway,
        path: Routes.paymentGateway,
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) => const PaymentGatewayPage(),
      ),
      GoRoute(
        name: Routes.paymentWindowWebView,
        path: Routes.paymentWindowWebView,
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) {
          return PaymentWindowWebViewPage(
            paymentMethod:
                state.uri.queryParameters[Constants.paymentMethodKey],
          );
        },
      ),
    ],
    errorBuilder: (context, state) => const NotFoundPage(),
  );

  static GoRouter get router => _router;
}
