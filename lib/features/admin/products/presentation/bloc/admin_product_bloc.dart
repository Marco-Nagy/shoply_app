import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoply/core/helpers/usecases/usecase.dart';
import 'package:shoply/features/admin/products/data/Mappers/create_product_mapper.dart';
import 'package:shoply/features/admin/products/data/Mappers/delete_product_mapper.dart';
import 'package:shoply/features/admin/products/data/Mappers/update_product_mapper.dart';
import 'package:shoply/features/admin/products/domain/entities/create_product_entity.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/admin/products/domain/entities/update_product_entity.dart';
import 'package:shoply/features/admin/products/domain/use_cases/create_product_use_case.dart';
import 'package:shoply/features/admin/products/domain/use_cases/delete_product_use_case.dart';
import 'package:shoply/features/admin/products/domain/use_cases/get_products_list_use_case.dart';
import 'package:shoply/features/admin/products/domain/use_cases/update_product_use_case.dart';
import 'package:shoply/features/customer/home/domain/entities/products_details_entity.dart';

part 'admin_product_bloc.freezed.dart';
part 'admin_product_event.dart';
part 'admin_product_state.dart';

class AdminProductBloc extends Bloc<AdminProductEvent, AdminProductState> {
  AdminProductBloc(
    this._productsListUseCase,
    this._createProductUseCase,
    this._updateProductUseCase,
    this._deleteProductUseCase,
  ) : super(const AdminProductState.initial()) {
    on<GetAdminProductListEvent>(_getAdminProductList);
    on<CreateAdminProductEvent>(_createNewProduct);
    on<UpdateAdminProductEvent>(_updateProduct);
    on<DeleteAdminProductEvent>(_deleteProduct);
    // on<GetAdminProductDetailsEvent>(_getProductDetails);
  }

  final GetProductsListUseCase _productsListUseCase;
  final CreateProductUseCase _createProductUseCase;
  final UpdateProductUseCase _updateProductUseCase;
  final DeleteProductUseCase _deleteProductUseCase;

  FutureOr<void> _getAdminProductList(
      GetAdminProductListEvent event, Emitter<AdminProductState> emit) async {
    emit(const AdminProductState.adminProductLoading());
    return _productsListUseCase.call(NoParams()).then(
      (value) {
        value.when(
          success: (data) {
            if (data.isEmpty) {
              emit(const AdminProductState.getAdminProductListEmpty());
            } else {
              emit(AdminProductState.getAdminProductListSuccess(data));
            }
          },
          failure: (errorHandler) {
            emit(AdminProductState.getAdminProductListFailure(
                errorHandler.errorMsg));
          },
        );
      },
    );
  }

  FutureOr<void> _createNewProduct(
      CreateAdminProductEvent event, Emitter<AdminProductState> emit) async {
    emit(const AdminProductState.adminProductLoading());
    debugPrint('Create new product body : ${event.body.title}');
    debugPrint('Create new product body : ${event.body.title}');
    debugPrint('Create new product body : ${event.body.price}');
    debugPrint('Create new product body : ${event.body.description}');
    debugPrint('Create new product body : ${event.body.categoryId}');
    var result = await _createProductUseCase.call(event.body);
    result.when(success: (data) {
        emit(AdminProductState.createNewProductSuccess(
            CreateProductMapper.toEntity(data.data!)));
        // Emit new product list to reflect the update

    }, failure: (errorHandler) {
        emit(AdminProductState.createNewProductFailure(errorHandler.errorMsg));
      },);
  }

  FutureOr<void> _updateProduct(
      UpdateAdminProductEvent event, Emitter<AdminProductState> emit) async {
    emit(const AdminProductState.adminProductLoading());
    var result = await _updateProductUseCase.call(event.body);
    result.when(success: (data) {
        emit(AdminProductState.updateProductSuccess(
            UpdateProductMapper.toEntity(data.data!)));
        // Emit updated product list to reflect the update
    },failure: (errorHandler) {

      emit(AdminProductState.updateProductFailure(errorHandler.errorMsg));
    },);
  }

  FutureOr<void> _deleteProduct(
      DeleteAdminProductEvent event, Emitter<AdminProductState> emit) async {
    emit(const AdminProductState.adminProductLoading());
    var result = await _deleteProductUseCase.call(event.productId);
    result.when(success: (data) {
        emit(AdminProductState.deleteProductSuccess(
            DeleteProductMapper.toEntity(data)));
        // Emit updated product list to reflect the update
    },failure: (errorHandler) {
      emit(AdminProductState.deleteProductFailure(errorHandler.errorMsg));
      },
    );
  }

// FutureOr<void> _getProductDetails(GetAdminProductDetailsEvent event,
//     Emitter<AdminProductState> emit) async {
//   emit(const AdminProductState.adminProductLoading());
//   return _productsDetailsUseCase.call(event.productId).then(
//     (value) {
//       value.when(
//         success: (data) {
//           debugPrint('########$data');
//             emit(AdminProductState.getAdminProductDetailsSuccess(data));
//     },
//     failure: (errorHandler) {
//       emit(AdminProductState.getAdminProductDetailsFailure(
//           errorHandler.errorMsg));
//     },
//   );
//     },
//   );
// }
}
