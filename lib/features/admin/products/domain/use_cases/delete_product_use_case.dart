import 'package:shoply/core/app/Apis/api_result.dart';
import 'package:shoply/core/helpers/usecases/usecase.dart';
import 'package:shoply/features/admin/products/data/model/delete_category/delete_product.dart';
import 'package:shoply/features/admin/products/data/repository/admin_product_repository.dart';

class DeleteProductUseCase extends UseCase<DeleteProductResponse, String> {
  final AdminProductRepository _repository;

  DeleteProductUseCase(this._repository);

  @override
  Future<ApiResult<DeleteProductResponse>> call(String params) {
    return _repository.deleteProduct(params);
  }
}
