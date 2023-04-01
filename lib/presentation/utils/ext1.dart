import 'dart:io';
import 'package:beesiha_test/domain/preferences/user_preferences.dart';
import 'package:beesiha_test/injection/injector.dart';
import 'package:beesiha_test/presentation/routes/router.gr.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

/*
    flutter clean
    flutter build appbundle

    flutter pub run flutter_launcher_icons:main
    flutter pub run flutter_native_splash:create

    flutter pub run build_runner build --delete-conflicting-outputs

    Fluttertoast.showToast(
        msg: "TODO",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        fontSize: 16.0
    );
*/

DateTime? backbuttonpressedTime;

Future<bool> onWillPopExit() async {
  DateTime currentTime = DateTime.now();

  bool backButton = backbuttonpressedTime == null ||
      currentTime.difference(backbuttonpressedTime ?? currentTime) >
          const Duration(seconds: 2);

  if (backButton) {
    backbuttonpressedTime = currentTime;

    Fluttertoast.showToast(
        msg: "Please click back again to exit",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        fontSize: 16.0);
  } else {
    exit(0);
  }
  return false;
}

void goTo(String path) => injector.get<AppRouter>().pushNamed(path);

void pop() => injector.get<AppRouter>().pop();

Future<void> openUrl(String url) async => await launch(url);

Future<void> addToFavorites(int id) => injector.get<UserPreferences>().addFavorites(id);

Future<void> removeFromFavorites(int id) => injector.get<UserPreferences>().removeFromFavorites(id);

bool checkIfIsInFavorites(int id) => injector.get<UserPreferences>().getFavorites().getValue().contains(id.toString());

String apiUrl = 'https://gateway.marvel.com:443/v1/public';

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  print("Handling a background message: ${message.messageId}");
}

void configureFirebaseMessaging() {
  FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Got a message whilst in the foreground!');
    print('Message data: ${message.data}');

    if (message.notification != null) {
      print('Message also contained a notification: ${message.notification}');
    }
  });

  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    print("onMessageOpenedApp: $message");
  });

  firebaseMessaging.requestPermission(sound: true, badge: true, alert: true);
}
