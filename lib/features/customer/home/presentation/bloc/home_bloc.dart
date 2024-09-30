import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoply/core/helpers/usecases/usecase.dart';
import 'package:shoply/features/admin/categories/data/model/get_all_categories/get_all_categories.dart';
import 'package:shoply/features/admin/products/data/model/get_products_list/get_all_products.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/customer/home/data/Mappers/products_details_mapper.dart';
import 'package:shoply/features/customer/home/domain/entities/category_entity.dart';
import 'package:shoply/features/customer/home/domain/entities/products_details_entity.dart';
import 'package:shoply/features/customer/home/data/repositories/home_repository.dart';
import 'package:shoply/features/customer/home/domain/use_cases/home_categories_list_use_case.dart';
import 'package:shoply/features/customer/home/domain/use_cases/home_products_list_per_category_use_case.dart';
import 'package:shoply/features/customer/home/domain/use_cases/home_products_list_use_case.dart';
import 'package:shoply/features/customer/home/domain/use_cases/products_details_use_case.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc
    extends Bloc<HomeEvent, HomeState> {
  HomeBloc(
    this.homeProductsListUseCase,
    this.homeProductsListPerCategoryUseCase,
    this.homeCategoriesListUseCase,
    this.productsDetailsUseCase,
  ) : super(const HomeState.initial()) {
    on<FetchHomeCategoriesListEvent>(_fetchHomeCategoriesList);
    on<GetHomeProductListEvent>(_getHomeProductList);
    on<GetHomeProductDetailsEvent>(_getProductDetails);
    on<GetHomeProductListPerCategoryEvent>(_getHomeProductListPerCategory);
  }

  final HomeProductsListUseCase homeProductsListUseCase;
  final HomeProductsListPerCategoryUseCase homeProductsListPerCategoryUseCase;
  final HomeCategoriesListUseCase homeCategoriesListUseCase;
  final ProductsDetailsUseCase productsDetailsUseCase;
  bool loadMoreProducts =false;
  Future<FutureOr<void>> _fetchHomeCategoriesList(FetchHomeCategoriesListEvent event,
      Emitter<HomeState> emit)  {
    emit(const HomeState.categoriesLoading());
     return homeCategoriesListUseCase.call(NoParams()).then(
      (value) {
        value.when(
          success: (data) {
            if (data.isEmpty) {
              emit(const HomeState.getHomeCategoriesListEmpty());
            } else {
              emit(HomeState.getHomeCategoriesListSuccess(data));
            }
          },
          failure: (errorHandler) {
            emit(HomeState.getHomeCategoriesListFailure(errorHandler.errorMsg));
          },
        );
      },
    );
  }
  Future<FutureOr<void>> _getHomeProductList(
      GetHomeProductListEvent event, Emitter<HomeState> emit)  {
    emit(const HomeProductsLoading());
 return homeProductsListUseCase.call(NoParams()).then(
      (value) {
        value.when(
          success: (data) {
            if (data.isEmpty) {
              emit(const HomeState.getHomeProductListEmpty());
            } else {
              emit(HomeState.getHomeProductListSuccess(data));
            }
          },
          failure: (errorHandler) {
            emit(HomeState.getHomeProductListFailure(errorHandler.errorMsg));
          },
        );
      },
    );
  }

  Future<FutureOr<void>> _getProductDetails(
      GetHomeProductDetailsEvent event, Emitter<HomeState> emit)   {
    emit(const HomeState.productsLoading());
 return productsDetailsUseCase.call(event.productId).then(
      (value) {
        value.when(
          success: (data) {
            emit(HomeState.getHomeProductDetailsSuccess(data));
          },
          failure: (errorHandler) {
            emit(HomeState.getHomeProductDetailsFailure(errorHandler.errorMsg));
          },
        );
      },
    );
  }

  FutureOr<void> _getHomeProductListPerCategory(
      GetHomeProductListPerCategoryEvent event, Emitter<HomeState> emit) {
    emit(const HomeState.productsLoading());
    return homeProductsListPerCategoryUseCase.call(event.categoryId).then(
          (value) {
        value.when(
          success: (data) {
            if (data.isEmpty) {
              emit(const HomeState.getHomeProductListPerCategoryEmpty());
            } else {
              emit(HomeState.getHomeProductListPerCategorySuccess(data));
            }
          },
          failure: (errorHandler) {
            emit(HomeState.getHomeProductListPerCategoryFailure(errorHandler.errorMsg));
          },
        );
      },
    );
  }
}
