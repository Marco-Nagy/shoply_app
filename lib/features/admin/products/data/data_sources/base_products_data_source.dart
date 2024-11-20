import 'package:shoply/features/admin/products/domain/entities/create_product_entity.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/admin/products/domain/entities/update_product_entity.dart';

import '../model/create_product/create_product_request.dart';
import '../model/update_product/update_product_request.dart';

abstract class BaseProductsDataSource {
  getProductsList();

  createProduct(CreateProductEntity body);

  updateProduct(UpdateProductEntity body);

  deleteProduct({required String productId});
}
