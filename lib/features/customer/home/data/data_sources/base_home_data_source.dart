import 'package:shoply/features/admin/products/domain/entities/create_product_entity.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/admin/products/domain/entities/update_product_entity.dart';



abstract class BaseHomeDataSource {
  getAllCategories();
  getProductsList();
  getProductDetails({required String productId});
  getProductListPerCategory({required String categoryId});

}
