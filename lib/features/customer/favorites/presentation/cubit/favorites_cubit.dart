import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shoply/features/customer/favorites/domain/entities/favorites_entity.dart';
import 'package:shoply/features/customer/favorites/domain/use_cases/get_favorites_use_case.dart';
import 'package:shoply/features/customer/favorites/domain/use_cases/manage_favorite_use_case.dart';

part 'favorites_cubit.freezed.dart';
part 'favorites_state.dart';

@injectable
class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit(this.manageFavoriteUseCase, this.getFavoritesUseCase)
      : super(const FavoritesState.initial());
  final ManageFavoriteUseCase manageFavoriteUseCase;
  final GetFavoritesUseCase getFavoritesUseCase;

  Future<void> addAndRemoveFavorites(FavoritesEntity favorite) async {
    emit(const FavoritesState.initial());
    try {
      await manageFavoriteUseCase(favorite: favorite).whenComplete(
        () {
          getFavorites();
        },
      );
    } catch (e) {
      debugPrint('Error: $e');
    }
    emit(const FavoritesState.addAndRemoveFavorites());
  }

  Future<bool> isFavorite(String id) async {
    final favoritesList = await getFavoritesUseCase();
    final isFavorite =
        favoritesList.any((element) => element.productId == id.toString());
    emit(FavoritesState.changeFavoriteState(isFavorite: isFavorite));
    return isFavorite;
  }

  Future<List<FavoritesEntity>> getFavorites() async {
    emit(const FavoritesState.loading());
    final favoritesList = await getFavoritesUseCase();
    emit(FavoritesState.success(favorites: favoritesList));
    return getFavoritesUseCase();
  }
}
