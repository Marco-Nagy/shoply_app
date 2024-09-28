import 'package:shoply/core/app/Apis/api_result.dart';
import 'package:shoply/core/helpers/usecases/usecase.dart';
import 'package:shoply/features/admin/products/data/model/create_product/create_product_response.dart';
import 'package:shoply/features/admin/products/domain/entities/create_product_entity.dart';
import 'package:shoply/features/admin/products/domain/repositories/base_admin_product_repository.dart';

class CreateProductUseCase extends UseCase<CreateProductResponse,CreateProductEntity>{
  final BaseAdminProductRepository _repository;
  CreateProductUseCase(this._repository);
  @override
  Future<ApiResult<CreateProductResponse>> call(CreateProductEntity params) {
   return _repository.createProduct(params) ;
  }
}
