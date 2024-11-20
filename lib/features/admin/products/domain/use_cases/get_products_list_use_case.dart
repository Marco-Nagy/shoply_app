import 'package:flutter/cupertino.dart';
import 'package:shoply/core/app/Apis/api_result.dart';
import 'package:shoply/core/helpers/usecases/usecase.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/admin/products/domain/repositories/base_admin_product_repository.dart';

class GetProductsListUseCase implements UseCase<List<GetProductEntity>, NoParams> {
final  BaseAdminProductRepository _repository;

GetProductsListUseCase(this._repository);

  @override
  Future<ApiResult<List<GetProductEntity>>> call(NoParams params) async {
    return await _repository.getAllProducts();
  }

}
