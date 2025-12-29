import 'package:shoply/features/customer/favorites/domain/entities/favorites_entity.dart';

abstract class FavoritesRepo {
  Future<void> addFavorite({required FavoritesEntity body});
  Future<void> removeFavorite({required String productId});
  Future<List<FavoritesEntity>> getFavorites();
}
