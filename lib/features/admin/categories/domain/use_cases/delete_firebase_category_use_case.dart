import 'package:injectable/injectable.dart';
import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/core/helpers/usecases/usecase.dart';
import 'package:shoply/features/admin/categories/domain/repositories/admin_categories_repo.dart';

@injectable
class DeleteFirebaseCategoryUseCase implements UseCase<void, String> {
  final AdminCategoriesRepo _repo;

  DeleteFirebaseCategoryUseCase(this._repo);

  @override
  Future<DataResult<void>> call(String params) {
    return _repo.deleteFirebaseCategory(params);
  }
}
