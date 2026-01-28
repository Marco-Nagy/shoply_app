import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/features/admin/categories/data/model/multilingual_category_model_response.dart';

abstract class AdminCategoriesFirebaseDataSource {
  // New Firebase methods returning DTOs
  Future<DataResult<void>> createFirebaseCategory(
      MultilingualCategoryModelResponse category);
  Future<DataResult<void>> updateFirebaseCategory(
      MultilingualCategoryModelResponse category);
  Future<DataResult<void>> deleteFirebaseCategory(String id);
  Future<DataResult<List<MultilingualCategoryModelResponse>>>
      getFirebaseCategories();
}
