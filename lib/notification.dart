import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

intializeNotification() async {
  final fcm = FirebaseMessaging.instance;

  try {
    if (Platform.isIOS) {
      await fcm.requestPermission(
        alert: true,
        badge: true,
        sound: true,
      );

      await fcm.setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );
    }
  } catch (e) {
    debugPrint(e.toString());
  }
}

void _onMessage(RemoteMessage message) {
  debugPrint("Kamu menerima pesan! ${message.notification?.title}");
  debugPrint("${message.notification?.body}");
}

Future<void> _onBackgroundMessage(RemoteMessage message) async {
  debugPrint("Kamu menerima pesan! ${message.notification?.title}");
  debugPrint("${message.notification?.body}");
}

void _onOpened(RemoteMessage message) async {
  final data = message.data;
  debugPrint("Kamu bisa melakukan apapaun pada data! $data");
}
