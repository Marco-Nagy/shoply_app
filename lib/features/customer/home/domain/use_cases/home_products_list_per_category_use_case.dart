import 'package:shoply/core/app/Apis/api_result.dart';
import 'package:shoply/core/helpers/usecases/usecase.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/customer/home/domain/repositories/base_home_repository.dart';

class HomeProductsListPerCategoryUseCase extends UseCase<List<GetProductEntity>,String> {
  final BaseHomeRepository _repository;
  HomeProductsListPerCategoryUseCase(this._repository);
  @override
  Future<ApiResult<List<GetProductEntity>>> call(String params) async{
   return await _repository.getProductListPerCategory(categoryId: params);
  }
}
