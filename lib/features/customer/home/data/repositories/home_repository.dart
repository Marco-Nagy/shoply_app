import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/core/app/Networking/errors/error_handler.dart';
import 'package:shoply/features/admin/products/data/Mappers/product_mapper.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/customer/home/data/Mappers/categories_mapper.dart';
import 'package:shoply/features/customer/home/data/Mappers/products_details_mapper.dart';
import 'package:shoply/features/customer/home/data/data_sources/home_data_source.dart';
import 'package:shoply/features/customer/home/domain/entities/category_entity.dart';
import 'package:shoply/features/customer/home/domain/entities/products_details_entity.dart';
import 'package:shoply/features/customer/home/domain/repositories/base_home_repository.dart';

@LazySingleton(as: BaseHomeRepository)
class HomeRepository implements BaseHomeRepository {
  final HomeDataSource _dataSource;

  HomeRepository(this._dataSource);

  @override
  Future<DataResult<List<CategoryEntity>>> getAllCategories() async {
    try {
      final response = await _dataSource.getAllCategories();
      if (response.data != null) {
        return DataResult.success(CategoriesMapper.toEntity(response));
      } else {
        return DataResult.failure(ServerFailure(response.errors!.first.message));
      }
    } on DioException catch (dioError) {
      return DataResult.failure(ServerFailure.fromDioException(dioError));
    } catch (error) {
      return DataResult.failure(ServerFailure(error.toString()));
    }
  }

  @override
  Future<DataResult<ProductsDetailsEntity>> getProductDetails(
      {required String productId}) async {
    try {
      final response =
          await _dataSource.getProductDetails(productId: productId);
      if (response.data != null) {
        return DataResult.success(
            ProductsDetailsMapper.productDetailsMapper(response));
      } else {
        return DataResult.failure(ServerFailure(response.errors!.first.message));
      }
    } on DioException catch (dioError) {
      return DataResult.failure(ServerFailure.fromDioException(dioError));
    } catch (error) {
      return DataResult.failure(ServerFailure(error.toString()));
    }
  }

  @override
  Future<DataResult<List<GetProductEntity>>> getProductListPerCategory(
      {required String categoryId}) async {
    try {
      final response =
          await _dataSource.getProductListPerCategory(categoryId: categoryId);
      if (response.data != null) {
        return DataResult.success(ProductMapper.fromResponse(response));
      } else {
        return DataResult.failure(ServerFailure(response.errors!.first.message));
      }
    } on DioException catch (dioError) {
      return DataResult.failure(ServerFailure.fromDioException(dioError));
    } catch (error) {
      return DataResult.failure(ServerFailure(error.toString()));
    }
  }

  @override
  Future<DataResult<List<GetProductEntity>>> getProductsList(
      {required int offset}) async {
    try {
      final response = await _dataSource.getProductsList(offset: offset);
      if (response.data != null) {
        return DataResult.success(ProductMapper.fromResponse(response));
      } else {
        return DataResult.failure(ServerFailure(response.errors!.first.message));
      }
    } on DioException catch (dioError) {
      return DataResult.failure(ServerFailure.fromDioException(dioError));
    } catch (error) {
      return DataResult.failure(ServerFailure(error.toString()));
    }
  }
}
