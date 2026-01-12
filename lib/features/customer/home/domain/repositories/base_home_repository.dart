import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/customer/home/domain/entities/category_entity.dart';
import 'package:shoply/features/customer/home/domain/entities/products_details_entity.dart';

abstract class BaseHomeRepository {
  Future<DataResult<List<CategoryEntity>>> getAllCategories();
  Future<DataResult<List<GetProductEntity>>> getProductsList(
      {required int offset});
  Future<DataResult<List<GetProductEntity>>> getProductListPerCategory(
      {required String categoryId});
  Future<DataResult<ProductsDetailsEntity>> getProductDetails(
      {required String productId});
}
