import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/features/admin/products/data/model/create_product/create_product_response.dart';
import 'package:shoply/features/admin/products/data/model/delete_category/delete_product.dart';
import 'package:shoply/features/admin/products/data/model/update_product/update_product_response.dart';
import 'package:shoply/features/admin/products/domain/entities/create_product_entity.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/admin/products/domain/entities/update_product_entity.dart';

abstract class BaseAdminProductRepository {
  Future<DataResult<List<GetProductEntity>>> getAllProducts();

  Future<DataResult<CreateProductResponse>> createProduct(
      CreateProductEntity body);

  Future<DataResult<UpdateProductResponse>> updateProduct(
      UpdateProductEntity body);

  Future<DataResult<DeleteProductResponse>> deleteProduct(String productId);
}
