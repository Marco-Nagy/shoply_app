import 'package:shoply/features/customer/favorites/data/models/favorites_table.dart';

class FavoritesEntity {
  late int id;
  late String image;
  late String price;
  late String productId;
  late String productName;
  late String categoryName;

  FavoritesEntity({
    required this.id,
    required this.image,
    required this.price,
    required this.productId,
    required this.productName,
    required this.categoryName,
  });

  /// Converts from schema to entity
  factory FavoritesEntity.fromSchema(FavoritesTable schema) {
    return FavoritesEntity(
      id: schema.id,
      productName: schema.productName,
      price: schema.price,
      categoryName: schema.categoryName,
      productId: schema.productId,
      image: schema.image,
    );
  }

  /// Converts from entity to schema
  FavoritesTable toSchema() {
    return FavoritesTable(
      image: image,
      price: price,
      categoryName: categoryName,
      productId: productId,
      productName: productName,
    );
  }
}
