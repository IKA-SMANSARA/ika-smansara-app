import 'dart:async';
import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:ika_smansara/firebase_options.dart';
import 'package:ika_smansara/utils/constants.dart';
import 'package:ika_smansara/utils/flutter_fcm.dart';
import 'package:ika_smansara/utils/my_observer.dart';

enum Flavors { development, staging, production }

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await setupFlutterNotifications();
  showFlutterNotification(message);
  // If you're going to use other Firebase services in the background, such as
  // Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  Constants.logger.d('Handling a background message ${message.messageId}');
}

// ignore: lines_longer_than_80_chars
Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  // Add cross-flavor configuration here
  WidgetsFlutterBinding.ensureInitialized();

  // init basic configuration
  switch (Constants.appFlavor) {
    case Constants.DEVELOPMENT:
      await dotenv.load(fileName: "assets/${Constants.DEVELOPMENT}/.env");
    case Constants.STAGING:
      await dotenv.load(fileName: "assets/${Constants.STAGING}/.env");
    case Constants.PRODUCTION:
      await dotenv.load(fileName: "assets/${Constants.PRODUCTION}/.env");
    default:
      await dotenv.load(fileName: "assets/${Constants.DEVELOPMENT}/.env");
  }
  usePathUrlStrategy();
  await Hive.initFlutter();

  if (defaultTargetPlatform != TargetPlatform.windows) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    FlutterError.onError = (details) {
      FirebaseCrashlytics.instance.recordFlutterFatalError(details);
      log(details.exceptionAsString(), stackTrace: details.stack);
    };

    // firebase notification
    // Set the background messaging handler early on,
    // as a named top-level function
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // allow notification for application not for build web
    if (!kIsWeb) {
      await setupFlutterNotifications();
    }

    // disable get fcm for build web
    // issue cannot run application if request fcm before allow notification
    // permission in browser
    if (!kIsWeb) {
      // init messaging instance for permission
      final messaging = FirebaseMessaging.instance;

      // permission request for notification
      final settings = await messaging.requestPermission();

      // get fcm token
      final fcmToken = kIsWeb
          ? await messaging.getToken(
              vapidKey: dotenv.env['VAPID_KEY_FCM'].toString(),
            )
          : await messaging.getToken();
      // ignore: inference_failure_on_function_invocation
      final fcmTokenBox = await Hive.openBox(
        dotenv.env['FCM_TOKEN_BOX_NAME'].toString(),
      );
      // save fcm token to local db
      await fcmTokenBox.put('fcmToken', fcmToken ?? '');

      // notification permission condition
      if (settings.authorizationStatus == AuthorizationStatus.authorized) {
        Constants.logger.i('User granted permission');
      } else if (settings.authorizationStatus ==
          AuthorizationStatus.provisional) {
        Constants.logger.i('User granted provisional permission');
      } else {
        Constants.logger.w('User declined or has not accepted permission');

        // Flutter local notification request permission android 13
        final flutterLocalNotificationsPlugin =
            FlutterLocalNotificationsPlugin();
        await flutterLocalNotificationsPlugin
            .resolvePlatformSpecificImplementation<
                AndroidFlutterLocalNotificationsPlugin>()
            ?.requestNotificationsPermission();
      }
    }

    // Pass all uncaught asynchronous errors that aren't handled by
    // the Flutter framework to Crashlytics
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
  }

  runApp(
    ProviderScope(
      observers: [
        MyObserver(),
      ],
      child: await builder(),
    ),
  );
}
