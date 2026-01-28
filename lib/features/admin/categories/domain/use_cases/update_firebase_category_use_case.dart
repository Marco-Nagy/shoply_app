import 'package:injectable/injectable.dart';
import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/core/helpers/usecases/usecase.dart';
import 'package:shoply/features/admin/categories/domain/entities/multilingual_category_entity.dart';
import 'package:shoply/features/admin/categories/domain/repositories/admin_categories_repo.dart';

@injectable
class UpdateFirebaseCategoryUseCase
    implements UseCase<void, MultilingualCategoryEntity> {
  final AdminCategoriesRepo _repo;

  UpdateFirebaseCategoryUseCase(this._repo);

  @override
  Future<DataResult<void>> call(MultilingualCategoryEntity params) {
    return _repo.updateFirebaseCategory(params);
  }
}
