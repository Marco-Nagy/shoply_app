import 'package:injectable/injectable.dart';
import 'package:shoply/features/customer/favorites/data/data_sources/favorites_data_source.dart';
import 'package:shoply/features/customer/favorites/domain/entities/favorites_entity.dart';
import 'package:shoply/features/customer/favorites/domain/repositories/favorites_repo.dart';

@LazySingleton(as: FavoritesRepo)
class FavoritesRepoImpl implements FavoritesRepo {
  final FavoritesDataSource _favoritesDataSource;

  FavoritesRepoImpl(this._favoritesDataSource);

  @override
  Future<void> addFavorite({required FavoritesEntity body}) {
    return _favoritesDataSource.addFavorite(body: body);
  }

  @override
  Future<List<FavoritesEntity>> getFavorites() async {
    final result = await _favoritesDataSource.getFavorites();
    return result
        .map(
          (e) => FavoritesEntity.fromHive(e),
        )
        .toList();
  }

  @override
  Future<void> removeFavorite({required String productId}) {
    return _favoritesDataSource.removeFavorite(productId: productId);
  }
}
