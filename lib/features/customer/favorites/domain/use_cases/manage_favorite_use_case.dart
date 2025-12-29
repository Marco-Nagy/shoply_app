import 'package:injectable/injectable.dart';
import 'package:shoply/features/customer/favorites/domain/entities/favorites_entity.dart';
import 'package:shoply/features/customer/favorites/domain/repositories/favorites_repo.dart';

@lazySingleton
class ManageFavoriteUseCase {
  final FavoritesRepo _favoritesRepo;

  ManageFavoriteUseCase(this._favoritesRepo);

  Future<void> call({required FavoritesEntity favorite}) async {
    List<FavoritesEntity> favorites = await _favoritesRepo.getFavorites();
    int existsIndex = favorites
        .indexWhere((element) => element.productId == favorite.productId);
    if (existsIndex != -1) {
      await _favoritesRepo.removeFavorite(productId: favorite.productId);
    } else {
      await _favoritesRepo.addFavorite(body: favorite);
    }
  }
}
