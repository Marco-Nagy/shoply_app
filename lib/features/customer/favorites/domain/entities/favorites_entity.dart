import 'package:shoply/features/customer/favorites/data/models/favorites_hive.dart';

class FavoritesEntity {
  late String image;
  late String price;
  late String productId;
  late String productName;
  late String categoryName;

  FavoritesEntity({
    required this.image,
    required this.price,
    required this.productId,
    required this.productName,
    required this.categoryName,
  });

  /// Converts from Hive model to entity
  factory FavoritesEntity.fromHive(FavoritesHive hive) {
    return FavoritesEntity(
      productName: hive.productName,
      price: hive.price,
      categoryName: hive.categoryName,
      productId: hive.productId,
      image: hive.image,
    );
  }

  /// Converts from entity to Hive model
  FavoritesHive toHive() {
    return FavoritesHive(
      image: image,
      price: price,
      categoryName: categoryName,
      productId: productId,
      productName: productName,
    );
  }
}
