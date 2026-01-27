import 'package:injectable/injectable.dart';
import 'package:shoply/core/Services/firebase_helper/fire_store_helper.dart';
import 'package:shoply/features/admin/categories/domain/entities/category_entity.dart';

import '../contract/admin_categories_firebase_data_source.dart';

@Injectable(as: AdminCategoriesFirebaseDataSource)
class AdminCategoriesFirebaseDataSourceImplDart implements AdminCategoriesFirebaseDataSource {
  final FireStoreService _fireStoreService;
  AdminCategoriesFirebaseDataSourceImplDart(
      this._fireStoreService,
      );

  @override
  Future<void> addCategory(CategoryEntity category) {
    // TODO: implement addCategory
    throw UnimplementedError();
  }

  @override
  Future<void> deleteCategory(String id) {
    // TODO: implement deleteCategory
    throw UnimplementedError();
  }

  @override
  Future<List<CategoryEntity>> getCategories() {
    // TODO: implement getCategories
    throw UnimplementedError();
  }

  @override
  Future<void> updateCategory(CategoryEntity category) {
    // TODO: implement updateCategory
    throw UnimplementedError();
  }
}
