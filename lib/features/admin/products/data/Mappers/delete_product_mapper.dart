import 'package:shoply/features/admin/products/data/model/delete_category/delete_product.dart';
import 'package:shoply/features/admin/products/domain/entities/delete_product_entity.dart';

class DeleteProductMapper {
  static toEntity(DeleteProductResponse  response) {
    if (response.data == null) {
      return const DeleteProductEntity(isDeleted: false);
    }
    return DeleteProductEntity(
      isDeleted: response.data!.isDeleted,
    );

  }
}
