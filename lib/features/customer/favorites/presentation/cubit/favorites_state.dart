part of 'favorites_cubit.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState.initial() = _Initial;
  const factory FavoritesState.addAndRemoveFavorites() =AddAndRemoveFavoritesState;
  const factory FavoritesState.loading() = LoadingFavoritesState;
  const factory FavoritesState.error({required String error}) = ErrorFavoritesState;
  const factory FavoritesState.success({required List<FavoritesEntity> favorites}) = SuccessFavoritesState;
  const factory FavoritesState.changeFavoriteState({required bool isFavorite}) = ChangeFavoriteState;

}
