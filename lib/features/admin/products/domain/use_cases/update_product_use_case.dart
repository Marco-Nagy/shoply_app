import 'package:shoply/core/app/Apis/api_result.dart';
import 'package:shoply/core/helpers/usecases/usecase.dart';
import 'package:shoply/features/admin/products/data/model/update_product/update_product_response.dart';
import 'package:shoply/features/admin/products/domain/entities/update_product_entity.dart';
import 'package:shoply/features/admin/products/domain/repositories/base_admin_product_repository.dart';

class UpdateProductUseCase
    extends UseCase<UpdateProductResponse, UpdateProductEntity> {
  final BaseAdminProductRepository _repository;

  UpdateProductUseCase(this._repository);

  @override
  Future<ApiResult<UpdateProductResponse>> call(UpdateProductEntity params) {
    return _repository.updateProduct(params);
  }
}
