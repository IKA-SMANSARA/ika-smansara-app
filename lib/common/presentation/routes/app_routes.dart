import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ika_smansara/account/account.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/counter/counter.dart';
import 'package:ika_smansara/home/home.dart';
import 'package:ika_smansara/my_donation/my_donation.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

class AppRoutes {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(
    initialLocation: Routes.home,
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
            path: Routes.home,
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            path: Routes.myDonation,
            builder: (context, state) => const MyDonationPage(),
          ),
          GoRoute(
            path: Routes.account,
            builder: (context, state) => const AccountPage(),
          ),
        ],
      ),
      GoRoute(
        name: Routes.counter,
        path: Routes.counter,
        builder: (context, state) => const CounterPage(),
      ),
      GoRoute(
        name: Routes.paymentGateway,
        path: Routes.paymentGateway,
        builder: (context, state) {
          return PaymentGatewayPage(
            paymentMethod: state.queryParameters[Constants.paymentMethodKey],
          );
        },
      ),
      GoRoute(
        name: Routes.paymentWindowWebView,
        path: Routes.paymentWindowWebView,
        builder: (context, state) {
          return PaymentWindowWebViewPage(
            paymentMethod: state.queryParameters[Constants.paymentMethodKey],
          );
        },
      ),
      GoRoute(
        path: Routes.selectPaymentMethod,
        builder: (context, state) => const PaymentMethodPage(),
      ),
      // deeplink for payment gateway route
      GoRoute(
        path: Routes.redirect,
        builder: (context, state) => const CounterPage(),
      ),
      // deeplink for payment gateway route
      GoRoute(
        path: Routes.returnRoute,
        builder: (context, state) {
          return PaymentGatewayPage(
            paymentMethod: state.queryParameters[Constants.paymentMethodKey],
          );
        },
      ),
      // deeplink for payment gateway route
      GoRoute(
        path: Routes.callbackPayment,
        builder: (context, state) => const CounterPage(),
      ),
      // deeplink for email verification
      GoRoute(
        path: Routes.callbackPageEmailVerification,
        builder: (context, state) => const CounterPage(),
      ),
    ],
    errorBuilder: (context, state) => const NotFoundPage(),
  );

  static GoRouter get router => _router;
}
