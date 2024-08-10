import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoply/features/admin/products/data/model/create_product/create_product_request.dart';
import 'package:shoply/features/admin/products/data/model/create_product/create_product_response.dart';
import 'package:shoply/features/admin/products/data/model/get_product_details/product_details.dart';
import 'package:shoply/features/admin/products/data/model/get_products_list/get_all_products.dart';
import 'package:shoply/features/admin/products/data/model/update_product/update_product_request.dart';
import 'package:shoply/features/admin/products/data/model/update_product/update_product_response.dart';
import 'package:shoply/features/admin/products/data/repository/admin_product_repository.dart';

part 'admin_product_event.dart';

part 'admin_product_state.dart';

part 'admin_product_bloc.freezed.dart';

class AdminProductBloc extends Bloc<AdminProductEvent, AdminProductState> {
  AdminProductBloc(this._repository)
      : super(const AdminProductState.initial()) {
    on<GetAdminProductListEvent>(_getAdminProductList);
    on<CreateAdminProductEvent>(_createNewProduct);
    on<UpdateAdminProductEvent>(_updateProduct);
    on<DeleteAdminProductEvent>(_deleteProduct);
    on<GetAdminProductDetailsEvent>(_getProductDetails);
  }

  final AdminProductRepository _repository;

  Future<FutureOr<void>> _getAdminProductList(
      GetAdminProductListEvent event, Emitter<AdminProductState> emit) async {
    emit(const AdminProductState.adminProductLoading());
    var result = await _repository.getAllProducts();
    result.when(
      success: (data) {
        if (data.data != null && data.data!.productsList != null) {
          if (data.data!.productsList!.isEmpty) {
            emit(const AdminProductState.getAdminProductListEmpty());
          } else {
            emit(AdminProductState.getAdminProductListSuccess(
                data.data!.productsList ?? []));
          }
        }
      },
      failure: (errorHandler) {
        emit(AdminProductState.getAdminProductListFailure(
            errorHandler.errorMsg));
      },
    );
  }

  Future<FutureOr<void>> _createNewProduct(
      CreateAdminProductEvent event, Emitter<AdminProductState> emit) async {
    emit(const AdminProductState.adminProductLoading());
    debugPrint('Create new product body : ${event.body.images}');
    debugPrint('Create new product body : ${event.body.title}');
    debugPrint('Create new product body : ${event.body.price}');
    debugPrint('Create new product body : ${event.body.description}');
    debugPrint('Create new product body : ${event.body.categoryId}');
    var result = await _repository.createProduct(event.body);
    result.when(success: (data) {
      emit( AdminProductState.createNewProductSuccess(data));
      // Emit new product list to reflect the update

    }, failure: (errorHandler) {
        emit(AdminProductState.createNewProductFailure(errorHandler.errorMsg));
      },);
  }

  Future<FutureOr<void>> _updateProduct(
      UpdateAdminProductEvent event, Emitter<AdminProductState> emit) async {
    emit(const AdminProductState.adminProductLoading());
    var result = await _repository.updateProduct(event.body);
    result.when(success: (data) {
      emit(AdminProductState.updateProductSuccess(data));
      // Emit updated product list to reflect the update
    },failure: (errorHandler) {

      emit(AdminProductState.updateProductFailure(errorHandler.errorMsg));
    },);
  }

  Future<FutureOr<void>> _deleteProduct(
      DeleteAdminProductEvent event, Emitter<AdminProductState> emit) async {
    emit(const AdminProductState.adminProductLoading());
    var result = await _repository.deleteProduct(event.productId);
    result.when(success: (data) {
      emit(const AdminProductState.deleteProductSuccess());
      // Emit updated product list to reflect the update
    },failure: (errorHandler) {

      emit(AdminProductState.deleteProductFailure(errorHandler.errorMsg));
    });
  }

  Future<FutureOr<void>> _getProductDetails(GetAdminProductDetailsEvent event,
      Emitter<AdminProductState> emit) async {
    emit(const AdminProductState.adminProductLoading());
    var result = await _repository.getProductDetailsById(event.productId);
    result.when(
      success: (data) {
        if (data.data != null && data.data!.product != null) {
          emit(AdminProductState.getAdminProductDetailsSuccess(
              data.data!.product!));
        }
      },
      failure: (errorHandler) {
        emit(AdminProductState.getAdminProductDetailsFailure(
            errorHandler.errorMsg));
      },
    );
  }
}
