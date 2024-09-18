import 'package:shoply/features/admin/products/data/model/get_products_list/get_all_products.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';

class ProductMapper {
  static List<GetProductEntity> fromResponse(GetAllProductsResponse response) {
    if (response.data?.productsList == null) return [];
    return response.data!.productsList!.map((product) => GetProductEntity(
      id: product.id??'',
      title: product.title ?? '',
      price: product.price ?? 0,
      description: product.description??'',
      images: product.images  ?? [],
      category: CategoryProductMapper.fromModel(product.category)  ,
    )).toList();
  }
}
class CategoryProductMapper {
  static CategoryProductEntity fromModel(CategoryProductModel? model) {
    if (model == null) {
      // Return a default CategoryProductEntity or handle the null case
      return const CategoryProductEntity(id: '', name: '');
    }
    return CategoryProductEntity(
      id: model.id??'',
      name: model.name??'',);
  }
}