import 'package:shoply/features/admin/categories/data/model/get_all_categories/get_all_categories.dart';
import 'package:shoply/features/customer/home/domain/entities/category_entity.dart';

class CategoriesMapper {
  static toEntity(GetAllCategoriesResponse response) {
    if (response.data?.categories==null) return[];
    return response.data!.categories!.map((category) {
      return CategoryEntity(
        id: category!.id??'',
        name: category.name??'',
        image: category.image??'',
      );

    },).toList();
  }
}

