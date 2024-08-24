import 'package:hive/hive.dart';
part 'add_notification_model.g.dart';
@HiveType(typeId: 0)
class AddNotificationModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String body;
  @HiveField(2)
  String productId;
  @HiveField(3)
  final DateTime createAt;

  AddNotificationModel({
    required this.title,
    required this.body,
    required this.createAt,
    required this.productId,
  });
}
