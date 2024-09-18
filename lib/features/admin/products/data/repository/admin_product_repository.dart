import 'package:dio/dio.dart';
import 'package:shoply/core/app/Apis/api_result.dart';
import 'package:shoply/core/app/apis/errors/error_handler.dart';
import 'package:shoply/features/admin/products/data/Mappers/product_mapper.dart';
import 'package:shoply/features/admin/products/data/data_sources/admin_products_data_source.dart';
import 'package:shoply/features/admin/products/data/model/create_product/create_product_response.dart';
import 'package:shoply/features/admin/products/data/model/delete_category/delete_product.dart';
import 'package:shoply/features/admin/products/data/model/update_product/update_product_response.dart';
import 'package:shoply/features/admin/products/domain/entities/create_product_entity.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/admin/products/domain/entities/update_product_entity.dart';
import 'package:shoply/features/admin/products/domain/repositories/base_admin_product_repository.dart';

class AdminProductRepository implements BaseAdminProductRepository{
  final AdminProductsDataSource _dataSource;

  AdminProductRepository(this._dataSource);

  @override
  Future<ApiResult<List<GetProductEntity>>> getAllProducts() async {
    try {
      final response = await _dataSource.getProductsList();

      if (response.data != null) {

        return ApiResult.success(ProductMapper.fromResponse(response));
      } else {
        return ApiResult.failure(ServerFailure(response.errors!.first.message));
      }
    } on DioException catch (dioError) {
      return ApiResult.failure(ServerFailure.fromDioException(dioError));
    } catch (error) {
      return ApiResult.failure(ServerFailure(error.toString()));
    }
  }

  @override
  Future<ApiResult<CreateProductResponse>> createProduct(CreateProductEntity body) async {
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
  @override
  Future<ApiResult<UpdateProductResponse>> updateProduct(UpdateProductEntity body) async {
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
  @override
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
