import 'package:injectable/injectable.dart';
import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/features/admin/categories/data/admin_categories_mappers.dart';
import 'package:shoply/features/admin/categories/data/data_source/contract/admin_categories_firebase_data_source.dart';
import 'package:shoply/features/admin/categories/domain/entities/multilingual_category_entity.dart';
import 'package:shoply/features/admin/categories/domain/repositories/admin_categories_repo.dart';

@Injectable(as: AdminCategoriesRepo)
class AdminCategoriesRepoImpl implements AdminCategoriesRepo {
  final AdminCategoriesFirebaseDataSource _dataSource;

  // Constructor injection
  AdminCategoriesRepoImpl(this._dataSource);

  @override
  Future<DataResult<void>> createFirebaseCategory(
      MultilingualCategoryEntity category) async {
    final model = AdminCategoriesMappers.fromEntityToModel(category);
    return await _dataSource.createFirebaseCategory(model);
  }

  @override
  Future<DataResult<void>> deleteFirebaseCategory(String id) async {
    return await _dataSource.deleteFirebaseCategory(id);
  }

  @override
  Future<DataResult<List<MultilingualCategoryEntity>>>
      getFirebaseCategories() async {
    final result = await _dataSource.getFirebaseCategories();

    return result.when(
      success: (data) => DataResult.success(
        AdminCategoriesMappers.fromModelsToEntities(data),
      ),
      failure: (errorHandler) => DataResult.failure(errorHandler),
    );
  }

  @override
  Future<DataResult<void>> updateFirebaseCategory(
      MultilingualCategoryEntity category) async {
    final model = AdminCategoriesMappers.fromEntityToModel(category);
    return await _dataSource.updateFirebaseCategory(model);
  }
}
