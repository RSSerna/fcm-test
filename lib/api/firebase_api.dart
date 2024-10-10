import 'package:firebase_cloud_message_flutter/main.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class FirebaseAPI {
  //Instance from Firebase Messaging
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotifications() async {
    //Request notification from user
    await _firebaseMessaging.requestPermission();
    //Get FCM token
    final tokenFCM = await _firebaseMessaging.getToken();
    //Print the Token, normally send that to server
    debugPrint(tokenFCM);

    initPushNotifications();
  }

  void handleMessage(RemoteMessage? message) {
    if (message == null) return;

    navigatorKey.currentState?.pushNamed('/notification', arguments: message);
  }

  //Function to initialize background settings
  Future initPushNotifications() async {
    //Handle notifications if app was terminated and opened
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
    //Event lisetener for when a notification opens the app
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }
}
