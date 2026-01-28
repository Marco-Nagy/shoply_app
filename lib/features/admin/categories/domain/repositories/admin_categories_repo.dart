import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/features/admin/categories/domain/entities/multilingual_category_entity.dart';

abstract interface class AdminCategoriesRepo {
  Future<DataResult<void>> createFirebaseCategory(
      MultilingualCategoryEntity category);
  Future<DataResult<void>> updateFirebaseCategory(
      MultilingualCategoryEntity category);
  Future<DataResult<void>> deleteFirebaseCategory(String id);
  Future<DataResult<List<MultilingualCategoryEntity>>> getFirebaseCategories();
}
