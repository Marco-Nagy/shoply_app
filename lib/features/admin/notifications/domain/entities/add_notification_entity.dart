class AddNotificationEntity {
  final String title;
  final String body;
  final String productId;
  final String productName;
  final DateTime createAt;

  AddNotificationEntity({
    required this.title,
    required this.body,
    required this.createAt,
    required this.productId,
    required this.productName,
  });
}
