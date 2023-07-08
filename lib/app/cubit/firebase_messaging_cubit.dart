import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:ika_smansara/common/common.dart';

class FirebaseMessagingCubit extends Cubit<RemoteMessage> {
  FirebaseMessagingCubit() : super(const RemoteMessage());
  StreamSubscription<RemoteMessage>? _subscription;

  void startListening() {
    _subscription = FirebaseMessaging.onMessage.listen((message) {
      emit(message);
      showFlutterNotification(message);
    });
  }

  void stopListening() {
    _subscription?.cancel();
    _subscription = null;
  }
}
