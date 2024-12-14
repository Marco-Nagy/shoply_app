// Mocks generated by Mockito 5.4.4 from annotations
// in shoply/test/features/admin/products/domain/use_cases/admin_product_use_cases_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:shoply/core/app/Apis/api_result.dart' as _i6;
import 'package:shoply/features/admin/products/data/model/create_product/create_product_response.dart'
    as _i7;
import 'package:shoply/features/admin/products/data/model/create_product/create_product_response.dart';
import 'package:shoply/features/admin/products/data/model/delete_category/delete_product.dart'
    as _i8;
import 'package:shoply/features/admin/products/data/model/update_product/update_product_response.dart'
    as _i9;
import 'package:shoply/features/admin/products/domain/entities/create_product_entity.dart'
    as _i4;
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/admin/products/domain/entities/update_product_entity.dart'
    as _i5;
import 'package:shoply/features/admin/products/domain/repositories/base_admin_product_repository.dart'
    as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [BaseAdminProductRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockBaseAdminProductRepository extends _i1.Mock
    implements _i2.BaseAdminProductRepository {
  MockBaseAdminProductRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<_i6.ApiResult<List<GetProductEntity>>> getAllProducts() =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllProducts,
          [],
        ),
        returnValue:_i3.Future.value(_i6.ApiResult.success(<GetProductEntity>[])),
      ) as _i3.Future<_i6.ApiResult<List<GetProductEntity>>>);

  @override
  _i3.Future<_i6.ApiResult<_i7.CreateProductResponse>> createProduct(
          _i4.CreateProductEntity? body) =>
      (super.noSuchMethod(
        Invocation.method(
          #createProduct,
          [body],
        ),
        returnValue: _i3.Future.value(_i6.ApiResult.success(CreateProductResponse(CreateProductResponseData(AddProduct('')),null))),
      ) as _i3.Future<_i6.ApiResult<_i7.CreateProductResponse>>);

  @override
  _i3.Future<_i6.ApiResult<_i9.UpdateProductResponse>> updateProduct(
          _i5.UpdateProductEntity? body) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateProduct,
          [body],
        ),
        returnValue: _i3.Future.value(_i6.ApiResult.success(_i9.UpdateProductResponse(_i9.UpdateProductResponseData(_i9.UpdateProduct('')),null))),
      ) as _i3.Future<_i6.ApiResult<_i9.UpdateProductResponse>>);

  @override
  _i3.Future<_i6.ApiResult<_i8.DeleteProductResponse>> deleteProduct(
          String? productId) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteProduct,
          [productId],
        ),
        returnValue: _i3.Future.value(_i6.ApiResult.success(_i8.DeleteProductResponse(_i8.DeleteProduct(true),null))),
      ) as _i3.Future<_i6.ApiResult<_i8.DeleteProductResponse>>);
}