import 'package:shoply/features/customer/home/domain/entities/category_entity.dart';

abstract interface class CategoriesRepository {
  Future<void> addCategory(CategoryEntity category);
  Future<void> updateCategory(CategoryEntity category);
  Future<void> deleteCategory(String id);
  Future<List<CategoryEntity>> getCategories();
}
