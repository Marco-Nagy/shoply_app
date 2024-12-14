import 'package:shoply/core/app/Apis/api_result.dart';
import 'package:shoply/core/helpers/usecases/usecase.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/filter/domain/entities/filter_products_entity.dart';
import 'package:shoply/features/filter/domain/repositories/base_admin_product_repository.dart';

class FilterProductsListUseCase implements UseCase<List<GetProductEntity>, FilterProductsEntity> {
final  BaseFilterProductsRepository _repository;

FilterProductsListUseCase(this._repository);

  @override
  Future<ApiResult<List<GetProductEntity>>> call(FilterProductsEntity params) async {
    return await _repository.filterProducts(body: params);
  }

}
