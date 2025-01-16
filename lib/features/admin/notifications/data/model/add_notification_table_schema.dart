import 'package:isar/isar.dart';

part 'add_notification_table_schema.g.dart';

@collection
class AddNotificationTableSchema {
  Id id = Isar.autoIncrement; // Automatically incrementing ID

  late String title;
  late String body;
  late String productId;
  late String productName;
  late DateTime createAt;

  AddNotificationTableSchema({
    required this.title,
    required this.body,
    required this.createAt,
    required this.productId,
    required this.productName,
  });


}

class AddNotificationEntity {
  late final String title;
  late final String body;
  late final String productId;
  late final String productName;
  final DateTime createAt;

  AddNotificationEntity({
    required this.title,
    required this.body,
    required this.createAt,
    required this.productId,
    required this.productName,
  });

  /// Converts from schema to entity
  factory AddNotificationEntity.fromSchema(AddNotificationTableSchema schema) {
    return AddNotificationEntity(
      title: schema.title,
      body: schema.body,
      createAt: schema.createAt,
      productId: schema.productId,
      productName: schema.productName,
    );
  }

  /// Converts from entity to schema
  AddNotificationTableSchema toSchema() {
    return AddNotificationTableSchema(
      title: title,
      body: body,
      createAt: createAt,
      productId: productId,
      productName: productName,
    );
  }
}
