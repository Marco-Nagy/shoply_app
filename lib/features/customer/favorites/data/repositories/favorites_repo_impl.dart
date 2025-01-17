import 'package:shoply/features/customer/favorites/data/data_sources/favorites_data_source.dart';
import 'package:shoply/features/customer/favorites/domain/entities/favorites_entity.dart';
import 'package:shoply/features/customer/favorites/domain/repositories/favorites_repo.dart';

class FavoritesRepoImpl implements FavoritesRepo {
  final FavoritesDataSource _favoritesDataSource;

  FavoritesRepoImpl(this._favoritesDataSource);

  @override
  addFavorite({required FavoritesEntity body}) {
    return _favoritesDataSource.addFavorite(body: body);
  }

  @override
  Future<List<FavoritesEntity>> getFavorites() async {
    final result = await _favoritesDataSource.getFavorites();
    return result
        .map(
          (e) => FavoritesEntity.fromSchema(e),
        )
        .toList();
  }

  @override
  removeFavorite({required int id}) {
    return _favoritesDataSource.removeFavorite(id: id);
  }
}
