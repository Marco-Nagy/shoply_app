import 'package:injectable/injectable.dart';
import 'package:shoply/core/app/apis/api_result.dart';
import 'package:shoply/core/helpers/usecases/usecase.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/customer/home/domain/repositories/base_home_repository.dart';

@lazySingleton
class HomeProductsListUseCase extends UseCase<List<GetProductEntity>, int> {
  final BaseHomeRepository _repository;

  HomeProductsListUseCase(this._repository);

  @override
  Future<ApiResult<List<GetProductEntity>>> call(int params) async {
    return await _repository.getProductsList(offset: params);
  }
}
