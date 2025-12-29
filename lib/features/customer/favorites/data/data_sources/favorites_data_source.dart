import 'package:injectable/injectable.dart';
import 'package:shoply/core/Services/localDataSource/hive_database.dart';
import 'package:shoply/features/customer/favorites/data/models/favorites_hive.dart';
import 'package:shoply/features/customer/favorites/domain/entities/favorites_entity.dart';

import 'base_favorite_data_source.dart';

@lazySingleton
class FavoritesDataSource implements BaseFavoritesDataSource {
  final HiveDatabaseHelper _hiveDatabaseHelper;

  FavoritesDataSource(this._hiveDatabaseHelper);

  @override
  Future<void> addFavorite({required FavoritesEntity body}) async {
    final hive = body.toHive();
    await _hiveDatabaseHelper.addEntity<FavoritesHive>(
      hive,
      key: body.productId,
    );
  }

  @override
  Future<List<FavoritesHive>> getFavorites() async {
    return await _hiveDatabaseHelper.getAllEntities<FavoritesHive>(
      HiveDatabaseHelper.favoritesBoxName,
    );
  }

  @override
  Future<void> removeFavorite({required String productId}) async {
    await _hiveDatabaseHelper.deleteEntity<FavoritesHive>(
      HiveDatabaseHelper.favoritesBoxName,
      productId,
    );
  }
}
