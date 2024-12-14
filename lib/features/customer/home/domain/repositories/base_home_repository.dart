import 'package:shoply/core/app/Apis/api_result.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/customer/home/domain/entities/category_entity.dart';
import 'package:shoply/features/customer/home/domain/entities/products_details_entity.dart';

abstract class BaseHomeRepository {
  Future<ApiResult<List<CategoryEntity>>>  getAllCategories();
  Future<ApiResult<List<GetProductEntity>>> getProductsList({required int offset});
  Future<ApiResult<List<GetProductEntity>>>  getProductListPerCategory({required String categoryId});
  Future<ApiResult<ProductsDetailsEntity>>  getProductDetails ({required String productId});

}
