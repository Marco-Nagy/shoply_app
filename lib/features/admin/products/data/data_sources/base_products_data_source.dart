import 'package:shoply/features/admin/products/domain/entities/create_product_entity.dart';
import 'package:shoply/features/admin/products/domain/entities/update_product_entity.dart';


abstract class BaseProductsDataSource {
  getProductsList();

  createProduct(CreateProductEntity body);

  updateProduct(UpdateProductEntity body);

  deleteProduct({required String productId});
}
