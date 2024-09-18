import 'package:shoply/features/admin/products/data/model/create_product/create_product_response.dart';
import 'package:shoply/features/admin/products/domain/entities/create_product_entity.dart';

class CreateProductMapper {
  static toEntity(CreateProductResponseData response) {
    if (response.addProduct == null) return;
    return response.addProduct!.id;
  }
}
