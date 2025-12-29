import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/customer/favorites/domain/entities/favorites_entity.dart';

class FavoritesMappers {
  FavoritesEntity fromModel(GetProductEntity model) {
    return FavoritesEntity(
      productName: model.title,
      image: model.images.first,
      price: model.price.toString(),
      categoryName: model.category.name,
      productId: model.id,
    );
  }

  GetProductEntity toModel(FavoritesEntity entity) {
    return GetProductEntity(
      id: entity.productId,
      title: entity.productName,
      images: [entity.image],
      price: int.parse(entity.price),
      category: CategoryProductEntity(id: '', name: entity.categoryName),
      description: '',
    );
  }
}
