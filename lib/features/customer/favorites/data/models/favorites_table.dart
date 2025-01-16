import 'package:isar/isar.dart';
part 'favorites_table.g.dart';
@collection
class FavoritesTable {
  FavoritesTable({
    required this.image,
    required this.price,
    required this.productName,
    required this.categoryName,
    required this.productId,
  });

  Id id = Isar.autoIncrement; // A
  late String image;
  late String price;
  late String productId;
  late String productName;
  late String categoryName;
}
