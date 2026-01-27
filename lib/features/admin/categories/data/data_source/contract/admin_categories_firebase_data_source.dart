import 'package:shoply/features/admin/categories/domain/entities/category_entity.dart';

abstract class AdminCategoriesFirebaseDataSource {
  Future<void> addCategory(CategoryEntity category);
  Future<void> updateCategory(CategoryEntity category);
  Future<void> deleteCategory(String id);
  Future<List<CategoryEntity>> getCategories();
}
