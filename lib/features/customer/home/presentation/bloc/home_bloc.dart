import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoply/core/helpers/usecases/usecase.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/customer/home/domain/entities/category_entity.dart';
import 'package:shoply/features/customer/home/domain/entities/products_details_entity.dart';
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

  int offset = 1;
  List<GetProductEntity> newList = [];

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
    if (offset == 1) {
      emit(const HomeProductsLoading());
    }
    return homeProductsListUseCase.call(offset).then(
      (value) {
        value.when(
          success: (data) {
            if (data.isEmpty) {
              emit(const HomeState.getHomeProductListEmpty());
            } else {
              if (offset == 1) {
                newList = data; // First time load
              } else {
                newList = newList + data; // Load more and append to the list
              }
              loadMoreProducts = false; // Reset the flag
              emit(HomeState.getHomeProductListSuccess(
                newList,
              ));
            }
          },
          failure: (errorHandler) {
            emit(HomeState.getHomeProductListFailure(errorHandler.errorMsg));
            loadMoreProducts = false; // Reset the flag in case of failure
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

  handlePagination({
    required ScrollController scrollController,
    required double loadMorePosition,
  }) {
    final offsetPosition = scrollController.position.pixels;
    final maxScroll = scrollController.position.maxScrollExtent;

    if (!loadMoreProducts && offsetPosition >= maxScroll - loadMorePosition) {
      loadMoreProducts = true; // Prevent multiple calls
      offset++; // Increment the offset
      add(const GetHomeProductListEvent()); // Dispatch the event

    }
  }
}
