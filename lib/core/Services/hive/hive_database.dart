import 'package:hive_flutter/hive_flutter.dart';
import 'package:shoply/features/admin/notifications/data/model/add_notification_model.dart';

class HiveDatabase {
  HiveDatabase._();

  static final HiveDatabase _instance = HiveDatabase._();

  factory HiveDatabase() => _instance;

  Box<AddNotificationModel>? notificationBox;

  Future<void> setUp() async {
    await Hive.initFlutter();
    Hive.registerAdapter(AddNotificationModelAdapter());
    notificationBox =
        await Hive.openBox<AddNotificationModel>("notification_box");
  }

  Future<void> clearAllBoxes() async {
    notificationBox!.clear();
  }
}
