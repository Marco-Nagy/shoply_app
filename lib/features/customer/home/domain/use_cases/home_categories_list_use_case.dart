import 'package:injectable/injectable.dart';
import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/core/helpers/usecases/usecase.dart';
import 'package:shoply/features/customer/home/domain/entities/category_entity.dart';
import 'package:shoply/features/customer/home/domain/repositories/base_home_repository.dart';

@lazySingleton
class HomeCategoriesListUseCase
    extends UseCase<List<CategoryEntity>, NoParams> {
  final BaseHomeRepository _repository;

  HomeCategoriesListUseCase(this._repository);
  @override
  Future<DataResult<List<CategoryEntity>>> call(NoParams params) {
    return _repository.getAllCategories();
  }
}
