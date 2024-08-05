import 'package:dio/dio.dart';
import 'package:shoply/core/app/Apis/api_result.dart';
import 'package:shoply/core/app/apis/errors/error_handler.dart';
import 'package:shoply/features/admin/products/data/data_sources/admin_products_api_service.dart';
import 'package:shoply/features/admin/products/data/data_sources/admin_products_data_source.dart';
import 'package:shoply/features/admin/products/data/model/create_product/create_product_request.dart';
import 'package:shoply/features/admin/products/data/model/create_product/create_product_response.dart';
import 'package:shoply/features/admin/products/data/model/delete_category/delete_product.dart';
import 'package:shoply/features/admin/products/data/model/get_product_details/product_details.dart';
import 'package:shoply/features/admin/products/data/model/get_products_list/get_all_products.dart';
import 'package:shoply/features/admin/products/data/model/update_product/update_product_request.dart';
import 'package:shoply/features/admin/products/data/model/update_product/update_product_response.dart';

class AdminProductRepository {
  final AdminProductsDataSource _dataSource;

  AdminProductRepository(this._dataSource);

  Future<ApiResult<GetAllProductsResponse>> getAllProducts() async {
    try {
      final response = await _dataSource.getProductsList();
      if (response.data != null) {
        return ApiResult.success(response);
      } else {
        return ApiResult.failure(ServerFailure(response.errors!.first.message));
      }
    } on DioException catch (dioError) {
      return ApiResult.failure(ServerFailure.fromDioException(dioError));
    } catch (error) {
      return ApiResult.failure(ServerFailure(error.toString()));
    }
  }
  Future<ApiResult<ProductDetailsResponse>> getProductById(String productId) async {
    try {
      final response = await _dataSource.getProductDetails(productId: productId);
      if (response.data != null) {
        return ApiResult.success(response);
      } else {
        return ApiResult.failure(ServerFailure(response.errors!.first.message));
      }
    } on DioException catch (dioError) {
      return ApiResult.failure(ServerFailure.fromDioException(dioError));
    } catch (error) {
      return ApiResult.failure(ServerFailure(error.toString()));
    }
  }
  Future<ApiResult<CreateProductResponse>> createProduct(CreateProductRequest body) async {
    try {
      final response = await _dataSource.createProduct( body);
      if (response.data != null) {
        return ApiResult.success(response);
      } else {
        return ApiResult.failure(ServerFailure(response.errors!.first.message));
      }
    } on DioException catch (dioError) {
      return ApiResult.failure(ServerFailure.fromDioException(dioError));
    } catch (error) {
      return ApiResult.failure(ServerFailure(error.toString()));
    }
  }
  Future<ApiResult<UpdateProductResponse>> updateProduct( UpdateProductRequest body) async {
    try {
      final response = await _dataSource.updateProduct(body);
      if (response.data != null) {
        return ApiResult.success(response);
      } else {
        return ApiResult.failure(ServerFailure(response.errors!.first.message));
      }
    } on DioException catch (dioError) {
      return ApiResult.failure(ServerFailure.fromDioException(dioError));
    } catch (error) {
      return ApiResult.failure(ServerFailure(error.toString()));
    }
  }
  Future<ApiResult<DeleteProductResponse>> deleteProduct(String productId) async {
    try {
      final response = await _dataSource.deleteProduct(productId: productId);
      if (response.data != null) {
        return ApiResult.success(response);
      } else {
        return ApiResult.failure(ServerFailure(response.errors!.first.message));
      }
    } on DioException catch (dioError) {
      return ApiResult.failure(ServerFailure.fromDioException(dioError));
    } catch (error) {
      return ApiResult.failure(ServerFailure(error.toString()));
    }
  }
}
