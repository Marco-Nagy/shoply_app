import 'package:shoply/features/customer/favorites/data/models/favorites_hive.dart';
import 'package:shoply/features/customer/favorites/domain/entities/favorites_entity.dart';

abstract class BaseFavoritesDataSource {
  Future<void> addFavorite({required FavoritesEntity body});
  Future<void> removeFavorite({required String productId});
  Future<List<FavoritesHive>> getFavorites();
}
