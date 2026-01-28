import 'package:injectable/injectable.dart';
import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/core/helpers/usecases/usecase.dart';
import 'package:shoply/features/admin/categories/domain/entities/multilingual_category_entity.dart';
import 'package:shoply/features/admin/categories/domain/repositories/admin_categories_repo.dart';

@injectable
class GetFirebaseCategoriesUseCase
    implements UseCase<List<MultilingualCategoryEntity>, NoParams> {
  final AdminCategoriesRepo _repo;

  GetFirebaseCategoriesUseCase(this._repo);

  @override
  Future<DataResult<List<MultilingualCategoryEntity>>> call(NoParams params) {
    return _repo.getFirebaseCategories();
  }
}
