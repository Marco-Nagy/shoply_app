import 'package:shoply/features/admin/products/data/model/update_product/update_product_response.dart';

class UpdateProductMapper {
  static toEntity (UpdateProductResponseData response){
    if(response.updateProduct==null)return;
    return response.updateProduct!.id;
  }
}
