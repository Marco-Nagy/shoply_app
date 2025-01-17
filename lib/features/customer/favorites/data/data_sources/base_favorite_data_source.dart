import 'package:shoply/features/customer/favorites/data/models/favorites_table.dart';
import 'package:shoply/features/customer/favorites/domain/entities/favorites_entity.dart';

abstract class BaseFavoritesDataSource {
  addFavorite({required FavoritesEntity body});
  removeFavorite({required int id});
  Future<List<FavoritesTable>>  getFavorites();
}
