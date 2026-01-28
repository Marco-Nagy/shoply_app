part of 'admin_categories_bloc.dart';

@freezed
class AdminCategoriesState with _$AdminCategoriesState {
  const factory AdminCategoriesState.initial() = _Initial;

  const factory AdminCategoriesState.adminCategoriesLoading() =
      AdminCategoriesLoading;

  //* Old REST States (Not modified)
  const factory AdminCategoriesState.getAdminCategoriesListSuccess(
      List<Categories?> categoriesList) = GetAdminCategoriesListSuccess;
  const factory AdminCategoriesState.getAdminCategoriesListEmpty() =
      GetAdminCategoriesListEmpty;
  const factory AdminCategoriesState.getAdminCategoriesListFailure(
      String errorMessage) = GetAdminCategoriesListFailure;

  const factory AdminCategoriesState.addNewCategorySuccess() =
      AddNewCategorySuccess;
  const factory AdminCategoriesState.addNewCategoryFailure(
      String errorMessage) = AddNewCategoryFailure;

  const factory AdminCategoriesState.updateCategorySuccess() =
      UpdateCategorySuccess;
  const factory AdminCategoriesState.updateCategoryFailure(
      String errorMessage) = UpdateCategoryFailure;

  const factory AdminCategoriesState.deleteCategorySuccess() =
      DeleteCategorySuccess;
  const factory AdminCategoriesState.deleteCategoryFailure(
      String errorMessage) = DeleteCategoryFailure;

  //* New Firebase States (Added)
  const factory AdminCategoriesState.getFirebaseCategoriesSuccess(
          List<MultilingualCategoryEntity> categoriesList) =
      GetFirebaseCategoriesSuccess;
  const factory AdminCategoriesState.getFirebaseCategoriesEmpty() =
      GetFirebaseCategoriesEmpty;
  const factory AdminCategoriesState.getFirebaseCategoriesFailure(
      String errorMessage) = GetFirebaseCategoriesFailure;

  const factory AdminCategoriesState.addFirebaseCategorySuccess() =
      AddFirebaseCategorySuccess;
  const factory AdminCategoriesState.addFirebaseCategoryFailure(
      String errorMessage) = AddFirebaseCategoryFailure;

  const factory AdminCategoriesState.updateFirebaseCategorySuccess() =
      UpdateFirebaseCategorySuccess;
  const factory AdminCategoriesState.updateFirebaseCategoryFailure(
      String errorMessage) = UpdateFirebaseCategoryFailure;

  const factory AdminCategoriesState.deleteFirebaseCategorySuccess() =
      DeleteFirebaseCategorySuccess;
  const factory AdminCategoriesState.deleteFirebaseCategoryFailure(
      String errorMessage) = DeleteFirebaseCategoryFailure;
}
