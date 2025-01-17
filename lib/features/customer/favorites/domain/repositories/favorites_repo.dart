import 'package:shoply/features/customer/favorites/domain/entities/favorites_entity.dart';

abstract class FavoritesRepo {
  addFavorite({required FavoritesEntity body});
  removeFavorite({required int id});
  Future<List<FavoritesEntity>>  getFavorites();
}
