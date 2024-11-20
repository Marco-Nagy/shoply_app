import 'package:shoply/core/app/Apis/api_result.dart';
import 'package:shoply/features/admin/products/data/model/create_product/create_product_request.dart';
import 'package:shoply/features/admin/products/data/model/create_product/create_product_response.dart';
import 'package:shoply/features/admin/products/data/model/delete_category/delete_product.dart';
import 'package:shoply/features/admin/products/data/model/update_product/update_product_request.dart';
import 'package:shoply/features/admin/products/data/model/update_product/update_product_response.dart';
import 'package:shoply/features/admin/products/domain/entities/create_product_entity.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/admin/products/domain/entities/update_product_entity.dart';
import 'package:shoply/features/customer/home/domain/entities/products_details_entity.dart';

abstract class BaseAdminProductRepository {
  Future<ApiResult<List<GetProductEntity>>> getAllProducts();

  Future<ApiResult<CreateProductResponse>> createProduct(
      CreateProductEntity body);

  Future<ApiResult<UpdateProductResponse>> updateProduct(
      UpdateProductEntity body);

  Future<ApiResult<DeleteProductResponse>> deleteProduct(String productId);
}
