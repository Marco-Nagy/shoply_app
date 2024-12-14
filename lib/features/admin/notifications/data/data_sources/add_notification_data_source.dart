import 'package:shoply/core/Services/push_notifications/firebase_cloud_messaging.dart';

class AddNotificationDataSource {
  //* Send notification topic to users
  Future<void> sendNotifications({
    required String title,
    required body,
    required String productId,
  }) async {
    //* Use Firebase Cloud Messaging to send notifications
    //* Example: FirebaseMessaging.instance.send(Notification(title: title, body: body));
    final response = await FirebaseCloudMessaging()
        .sendTopicNotification(topic:FirebaseCloudMessaging.subscribeKey ,title: title, body: body, productId: productId);

    return response;
  }
}
