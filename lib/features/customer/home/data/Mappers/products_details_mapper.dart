import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/customer/home/domain/entities/products_details_entity.dart';
import 'package:shoply/features/customer/home/data/models/get_product_details/product_details.dart';

class ProductsDetailsMapper {
  static productDetailsMapper (ProductDetailsResponse response){
    return ProductsDetailsEntity(
      id: response.data!.product!.id??'',
      title:response.data!.product!. title??'',
      price: response.data!.product!.price??0,
      description:response.data!.product!. description??'',
      images: response.data!.product!.images??[],
    );
  }
}
