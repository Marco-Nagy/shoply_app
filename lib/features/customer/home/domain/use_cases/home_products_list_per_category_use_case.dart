import 'package:injectable/injectable.dart';
import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/core/helpers/usecases/usecase.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/customer/home/domain/repositories/base_home_repository.dart';

@lazySingleton
class HomeProductsListPerCategoryUseCase
    extends UseCase<List<GetProductEntity>, String> {
  final BaseHomeRepository _repository;
  HomeProductsListPerCategoryUseCase(this._repository);
  @override
  Future<DataResult<List<GetProductEntity>>> call(String params) {
    return _repository.getProductListPerCategory(categoryId: params);
  }
}
