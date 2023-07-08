import 'package:go_router/go_router.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/counter/counter.dart';

class AppRoutes {
  static final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    routerNeglect: true,
    routes: [
      GoRoute(
        path: Routes.root,
        builder: (context, state) => const CounterPage(),
      ),
    ],
    errorBuilder: (context, state) => const NotFoundPage(),
  );

  static GoRouter get router => _router;
}
