import 'package:app_notifications/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

part 'notications_event.dart';
part 'notications_state.dart';

class NoticationsBloc extends Bloc<NoticationsEvent, NoticationsState> {
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  NoticationsBloc() : super(const NoticationsState()) {
    // on<NoticationsEvent>((event, emit) {
    // TODO: implement event handler
    // });
  }

  static Future<void> initializeFirebaseNotifications() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  void requestPermission() async {
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: true,
      sound: true,
    );

    settings.authorizationStatus;
  }
}
