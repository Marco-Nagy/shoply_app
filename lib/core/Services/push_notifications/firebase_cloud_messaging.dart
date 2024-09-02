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
  static const String subscribeKey = "shoply";
  bool isPermissionNotification = false;
  ValueNotifier<bool> isNotificationSubscribed = ValueNotifier(false);

  Future<void> initialize() async {
    //? Request permission for iOS
    await _requestPermissions();
    //? For handling background messages
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    //? Get the token
    await getDeviceToken();

    //? Handle foreground messages
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      debugPrint('Message received: ${message.notification?.title}');
    });
  }

  Future<void> switchUserSubscribe() async {
    if (isPermissionNotification == false) {
      _requestPermissions();
    } else if (isNotificationSubscribed.value == false) {
      _subscribeToTopic(subscribeKey);
    } else {
      _unsubscribeFromTopic(subscribeKey);
    }
  }

//* Notification Permissions
  _requestPermissions() async {
    NotificationSettings settings = await messaging.requestPermission(
      badge: false,
    );
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      _subscribeToTopic(subscribeKey);
      isPermissionNotification = true;
      debugPrint('User accept Notification 🔔🔔 permission');
    } else {
      isPermissionNotification = false;
      isNotificationSubscribed.value = false;
      debugPrint('User permissions denied 🔕🔕 or has not accept permission');
    }
  }

  //* Subscribe Notification
  Future<void> _subscribeToTopic(String topic) async {
      await messaging.subscribeToTopic(topic);
      isNotificationSubscribed.value = true;
      debugPrint('🔔🔔 Subscribed to $topic🔔🔔');
  }

  //* Unsubscribe Notification
  Future<void> _unsubscribeFromTopic(String topic) async {
      await messaging.unsubscribeFromTopic(topic);
      isNotificationSubscribed.value = false;
      debugPrint('🔕🔕 Unsubscribed from $topic 🔕🔕 ');
  }

  //* Send Notification with Api
  Future<void> sendTopicNotification(
      {String? topic,
      String? token,
        String? productId,
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
            'data': {'productId': productId},
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



  static Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    // Handle background messages here
    debugPrint("Handling a background message: ${message.messageId}");
  }
}
