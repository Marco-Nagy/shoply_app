import 'package:shoply/core/app/Apis/api_result.dart';
import 'package:shoply/core/helpers/usecases/usecase.dart';
import 'package:shoply/features/customer/home/domain/entities/category_entity.dart';
import 'package:shoply/features/customer/home/domain/repositories/base_home_repository.dart';

class HomeCategoriesListUseCase extends UseCase<List<CategoryEntity>,NoParams>{
  final BaseHomeRepository _repository;

  HomeCategoriesListUseCase(this._repository);
  @override
  Future<ApiResult<List<CategoryEntity>>> call(NoParams params)async {
    return await _repository.getAllCategories();
  }

}
