import 'package:shoply/core/app/apis/api_result.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/filter/domain/entities/filter_products_entity.dart';

abstract class BaseFilterProductsRepository {
  Future<ApiResult<List<GetProductEntity>>> filterProducts(
      {required FilterProductsEntity body});
}
