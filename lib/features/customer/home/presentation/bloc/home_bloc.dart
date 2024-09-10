import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoply/features/admin/categories/data/model/get_all_categories/get_all_categories.dart';
import 'package:shoply/features/admin/products/data/model/get_product_details/product_details.dart';
import 'package:shoply/features/admin/products/data/model/get_products_list/get_all_products.dart';
import 'package:shoply/features/customer/home/data/repositories/home_repository.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc
    extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._homeRepo)
      : super(const HomeState.initial()) {
    on<FetchHomeCategoriesListEvent>(_fetchHomeCategoriesList);
    on<GetHomeProductListEvent>(_getHomeProductList);
    on<GetHomeProductDetailsEvent>(_getProductDetails);

  }
 final HomeRepository _homeRepo;
  bool loadMoreProducts =false;
  Future<FutureOr<void>> _fetchHomeCategoriesList(FetchHomeCategoriesListEvent event,
      Emitter<HomeState> emit) async {
    emit(const HomeState.categoriesLoading());
    final result =await _homeRepo.getAllCategories();
    result.when(success: (data) {
      if (data.data != null&& data.data!.categories != null) {
        if ( data.data!.categories!.isEmpty) {
          emit(const HomeState.getHomeCategoriesListEmpty());
        }  else {
          emit( HomeState.getHomeListSuccess(data.data!.categories??[]));
        }

      }
    }, failure: (errorHandler) {
      emit( HomeState.getHomeCategoriesListFailure(errorHandler.errorMsg));
    },);
  }
  Future<FutureOr<void>> _getHomeProductList(
      GetHomeProductListEvent event, Emitter<HomeState> emit) async {
    emit(const HomeProductsLoading());
    var result = await _homeRepo.getAllProducts();
    result.when(
      success: (data) {
        if (data.data != null && data.data!.productsList != null) {
          if (data.data!.productsList!.isEmpty) {
            emit(const HomeState.getHomeProductListEmpty());
          } else {
            loadMoreProducts = data.data!.productsList!.length>=10;
            emit(HomeState.getHomeProductListSuccess(
                data.data!.productsList ?? []));
          }
        }
      },
      failure: (errorHandler) {
        emit(HomeState.getHomeProductListFailure(
            errorHandler.errorMsg));
      },
    );
  }
  Future<FutureOr<void>> _getProductDetails(GetHomeProductDetailsEvent event,
      Emitter<HomeState> emit) async {
    emit(const HomeState.productsLoading());
    var result = await _homeRepo.getProductDetailsById(event.productId);
    result.when(
      success: (data) {
        if (data.data != null && data.data!.product != null) {
          emit(HomeState.getHomeProductDetailsSuccess(
              data.data!.product!));
        }
      },
      failure: (errorHandler) {
        emit(HomeState.getHomeProductDetailsFailure(
            errorHandler.errorMsg));
      },
    );
  }
  
}
