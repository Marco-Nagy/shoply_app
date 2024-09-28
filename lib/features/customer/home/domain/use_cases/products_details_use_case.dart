import 'package:flutter/cupertino.dart';
import 'package:shoply/core/app/Apis/api_result.dart';
import 'package:shoply/core/helpers/usecases/usecase.dart';
import 'package:shoply/features/customer/home/domain/entities/products_details_entity.dart';
import 'package:shoply/features/admin/products/domain/repositories/base_admin_product_repository.dart';

// class ProductsDetailsUseCase implements UseCase<ProductsDetailsEntity,String>{
//   final  BaseAdminProductRepository _repository;
//   ProductsDetailsUseCase(this._repository);
//   @override
//   Future<ApiResult<ProductsDetailsEntity>> call(params) {
//     debugPrint('########$params');
//     return _repository.getProductDetailsById(params);
//   }
// }
