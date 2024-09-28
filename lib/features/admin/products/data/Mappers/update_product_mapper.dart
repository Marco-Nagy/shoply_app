import 'package:shoply/features/admin/products/data/model/update_product/update_product_response.dart';

class UpdateProductMapper {
  static toEntity (UpdateProductResponse response){
    if(response.data==null)return;
    return response..data!.updateProduct!.id;
  }
}
