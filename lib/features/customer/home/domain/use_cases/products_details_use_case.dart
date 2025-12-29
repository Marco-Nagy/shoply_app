import 'package:injectable/injectable.dart';
import 'package:shoply/core/app/apis/api_result.dart';
import 'package:shoply/core/helpers/usecases/usecase.dart';
import 'package:shoply/features/customer/home/domain/entities/products_details_entity.dart';
import 'package:shoply/features/customer/home/domain/repositories/base_home_repository.dart';

@lazySingleton
class ProductsDetailsUseCase implements UseCase<ProductsDetailsEntity, String> {
  final BaseHomeRepository _repository;
  ProductsDetailsUseCase(this._repository);

  @override
  Future<ApiResult<ProductsDetailsEntity>> call(String params) async {
    return await _repository.getProductDetails(productId: params);
  }
}
