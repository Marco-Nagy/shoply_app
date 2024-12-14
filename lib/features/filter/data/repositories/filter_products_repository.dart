import 'package:dio/dio.dart';
import 'package:shoply/core/app/Apis/api_result.dart';
import 'package:shoply/core/app/apis/errors/error_handler.dart';
import 'package:shoply/features/admin/products/data/Mappers/product_mapper.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/customer/home/data/Mappers/categories_mapper.dart';
import 'package:shoply/features/customer/home/data/Mappers/products_details_mapper.dart';
import 'package:shoply/features/customer/home/data/data_sources/home_data_source.dart';
import 'package:shoply/features/customer/home/domain/entities/category_entity.dart';
import 'package:shoply/features/customer/home/domain/entities/products_details_entity.dart';
import 'package:shoply/features/customer/home/domain/repositories/base_home_repository.dart';
import 'package:shoply/features/filter/data/data_sources/filter_products_data_source.dart';
import 'package:shoply/features/filter/domain/entities/filter_products_entity.dart';
import 'package:shoply/features/filter/domain/repositories/base_admin_product_repository.dart';

class FilterProductsRepository implements BaseFilterProductsRepository {
  final FilterProductsDataSource _dataSource;

  FilterProductsRepository(this._dataSource);

  @override
  Future<ApiResult<List<GetProductEntity>>> filterProducts({required FilterProductsEntity body}) async {
    try {
      final response = await _dataSource.filterProductsList(body: body);
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


}
