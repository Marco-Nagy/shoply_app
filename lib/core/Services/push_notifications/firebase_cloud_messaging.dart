import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:shoply/core/app/env_variables.dart';

import 'firebase_server_token.dart';

class FirebaseCloudMessaging {
  factory FirebaseCloudMessaging() => _instance;

  FirebaseCloudMessaging._();

  static final FirebaseCloudMessaging _instance = FirebaseCloudMessaging._();
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  requestPermissions() async {
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    return settings;
  }

  //* Send Notification with Api
  Future<void> sendTopicNotification(
      {String? topic,
      String? token,
      required String title,
      required String body}) async {
    FirebaseServerToken firebaseServerToken = FirebaseServerToken();

    final String serverToken = await firebaseServerToken.getAccessToken();
    try {
      final response = await Dio().post<dynamic>(
        EnvVariables.instance.notificationBaseUrl,
        options: Options(
          headers: {
            'Authorization': 'Bearer $serverToken',
            'Content-Type': 'application/json',
          },
          validateStatus: (_) => true,
          contentType: Headers.jsonContentType,
          responseType: ResponseType.json,
        ),
        data: {
          "message": {
            "topic": topic,
            "token": token,
            "notification": {
              "title": title,
              "body": body,
            },
          },
        },
      );

      debugPrint('Authorization : Bearer $serverToken');
      debugPrint(
          'notificationBaseUrl ${EnvVariables.instance.notificationBaseUrl}');
      debugPrint('Notification sent successfully : ${response.data}');

      debugPrint(
          'Error sending notification: ${response.statusCode} - ${response.data.error.message}');
    } catch (e) {
      debugPrint(' notification error : ${e.toString()} - ');
    }
  }

  //* Send Notification with FCM Token
  getDeviceToken() async {
    final deviceToken = await messaging.getToken();
    debugPrint('FCM Token: $deviceToken');
    return deviceToken;
  }

  Future<void> initialize() async {
    // For handling background messages
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // Request permission for iOS
    await messaging.requestPermission(sound: true,alert: true,badge: true,);

    // Get the token
    getDeviceToken();

    // Handle foreground messages
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Message received: ${message.notification?.title}');
    });
  }

  static Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    // Handle background messages here
    print("Handling a background message: ${message.messageId}");
  }
}
