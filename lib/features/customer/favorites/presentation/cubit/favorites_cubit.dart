import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoply/core/Services/localDataSource/isar_database_helper.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/features/customer/favorites/data/models/favorites_table.dart';
import 'package:shoply/features/customer/favorites/domain/entities/favorites_entity.dart';

part 'favorites_cubit.freezed.dart';
part 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit() : super(const FavoritesState.initial());
  final isarHelper = sl<IsarDatabaseHelper>();

  Future<void> addAndRemoveFavorites(FavoritesEntity favorite) async {
    emit(const FavoritesState.initial());
    try {
      if (isarHelper.isar == null) {
        await isarHelper.initialize(); // Ensure Isar is initialized
      }
      final favoritesList = await isarHelper.getAllEntities<FavoritesTable>();
      final existsIndex =
          favoritesList.indexWhere((element) => element.id == favorite.id);
      if (existsIndex != -1) {
        await isarHelper
            .deleteEntity<FavoritesTable>(favoritesList[existsIndex].id);
      } else {
        await isarHelper.addEntity<FavoritesTable>(favorite.toSchema());
      }
    } catch (e) {
      debugPrint('Error: $e');
    }
    emit(const FavoritesState.addAndRemoveFavorites());
  }

  Future<bool> isFavorite(int id) async {
    final favoritesList = await isarHelper.getAllEntities<FavoritesTable>();
    final existsIndex = favoritesList.any((element) => element.id == id);
    return existsIndex;
  }

  Future<List<FavoritesEntity>> getFavorites() async {
    final favoritesList = await isarHelper.getAllEntities<FavoritesTable>();
    return favoritesList.map((e) => FavoritesEntity.fromSchema(e)).toList();
  }
}
