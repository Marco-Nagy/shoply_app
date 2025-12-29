import 'package:hive_ce/hive.dart';

part 'favorites_hive.g.dart';

@HiveType(typeId: 1)
class FavoritesHive extends HiveObject {
  FavoritesHive({
    required this.productId,
    required this.productName,
    required this.categoryName,
    required this.image,
    required this.price,
  });

  @HiveField(0)
  String productId;

  @HiveField(1)
  String productName;

  @HiveField(2)
  String categoryName;

  @HiveField(3)
  String image;

  @HiveField(4)
  String price;
}
