import 'package:shoply/features/admin/products/data/model/create_product/create_product_response.dart';

class CreateProductMapper {
  static toEntity(CreateProductResponse response) {
    if (response.data == null) return;
    return response.data!.addProduct!.id;
  }
}
