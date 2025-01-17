import 'package:shoply/core/Services/localDataSource/isar_database_helper.dart';
import 'package:shoply/features/customer/favorites/data/models/favorites_table.dart';
import 'package:shoply/features/customer/favorites/domain/entities/favorites_entity.dart';

import 'base_favorite_data_source.dart';

class FavoritesDataSource implements BaseFavoritesDataSource {
  final IsarDatabaseHelper isarDatabaseHelper;

  FavoritesDataSource(this.isarDatabaseHelper);

  @override
  addFavorite({required FavoritesEntity body}) {
    return isarDatabaseHelper.addEntity(body.toSchema());
  }

  @override
  Future<List<FavoritesTable>> getFavorites() async {
    return await isarDatabaseHelper.getAllEntities<FavoritesTable>();

  }

  @override
  removeFavorite({required int id}) {
    return isarDatabaseHelper.deleteEntity<FavoritesTable>(id);
  }
}
