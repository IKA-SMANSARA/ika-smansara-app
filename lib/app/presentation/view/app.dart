import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ika_smansara/app/app.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FirebaseMessagingCubit()..startListening(),
      child: const AppScreen(),
    );
  }
}

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FirebaseMessagingCubit, RemoteMessage>(
      builder: (context, message) {
        Constants.logger.d(message.notification?.title);

        return MaterialApp.router(
          routeInformationProvider: AppRoutes.router.routeInformationProvider,
          routeInformationParser: AppRoutes.router.routeInformationParser,
          routerDelegate: AppRoutes.router.routerDelegate,
          theme: ThemeData(
            appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
            colorScheme: ColorScheme.fromSwatch(
              accentColor: const Color(0xFF13B9FF),
            ),
            useMaterial3: false,
          ),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
        );
      },
    );
  }
}
