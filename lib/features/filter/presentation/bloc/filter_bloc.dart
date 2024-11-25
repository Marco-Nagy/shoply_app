import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/filter/domain/entities/filter_products_entity.dart';
import 'package:shoply/features/filter/domain/use_cases/get_products_list_use_case.dart';

part 'filter_event.dart';

part 'filter_state.dart';

part 'filter_bloc.freezed.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc(this._getFilteredProductsUseCase)
      : super(const FilterState.initial()) {
    on<GetFilteredProductsListEvent>(_getFilteredProductsEve);
  }

  final FilterProductsListUseCase _getFilteredProductsUseCase;
  final formKye = GlobalKey<FormState>();
  var productNameController = TextEditingController();
  var maxPriceController = TextEditingController();
  var minPriceController = TextEditingController();
  FutureOr<void> _getFilteredProductsEve(
      GetFilteredProductsListEvent event, Emitter<FilterState> emit) {
    emit(const FilterState.filteredProductsLoading());
    return _getFilteredProductsUseCase(event.body).then(
      (value) {
        value.when(
          success: (data) {
            if (data.isEmpty) {
              emit(const FilterState.getFilteredProductsListEmpty());
            } else {
              emit(FilterState.getFilteredProductsListSuccess(data));
            }
          },
          failure: (errorHandler) {
            emit(FilterState.getFilteredProductsListFailure(
                errorHandler.errorMsg));
          },
        );
      },
    );
  }
}
