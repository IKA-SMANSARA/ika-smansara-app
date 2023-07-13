import 'package:go_router/go_router.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/counter/counter.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

class AppRoutes {
  static final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    routerNeglect: true,
    routes: [
      GoRoute(
        path: Routes.root,
        builder: (context, state) => const PaymentGatewayPage(),
      ),
      // deeplink for payment gateway route
      GoRoute(
        path: Routes.redirect,
        builder: (context, state) => const CounterPage(),
      ),
      // deeplink for payment gateway route
      GoRoute(
        path: Routes.returnRoute,
        builder: (context, state) => const CounterPage(),
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
