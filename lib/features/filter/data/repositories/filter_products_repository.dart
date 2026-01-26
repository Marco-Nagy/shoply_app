import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/core/app/Networking/errors/error_handler.dart';
import 'package:shoply/features/admin/products/data/Mappers/product_mapper.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/filter/data/data_sources/filter_products_data_source.dart';
import 'package:shoply/features/filter/domain/entities/filter_products_entity.dart';
import 'package:shoply/features/filter/domain/repositories/base_admin_product_repository.dart';

@LazySingleton(as: BaseFilterProductsRepository)
class FilterProductsRepository implements BaseFilterProductsRepository {
  final FilterProductsDataSource _dataSource;

  FilterProductsRepository(this._dataSource);

  @override
  Future<DataResult<List<GetProductEntity>>> filterProducts(
      {required FilterProductsEntity body}) async {
    try {
      final response = await _dataSource.filterProductsList(body: body);
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
