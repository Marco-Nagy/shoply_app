import 'package:shoply/features/customer/favorites/domain/entities/favorites_entity.dart';
import 'package:shoply/features/customer/favorites/domain/repositories/favorites_repo.dart';

class GetFavoritesUseCase {
  final FavoritesRepo _favoritesRepository;

  GetFavoritesUseCase(this._favoritesRepository);

  Future<List<FavoritesEntity>> call() async {
    return await _favoritesRepository.getFavorites();
  }
}
