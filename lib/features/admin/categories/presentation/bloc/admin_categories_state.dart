part of 'admin_categories_bloc.dart';

@freezed
class AdminCategoriesState with _$AdminCategoriesState {
  const factory AdminCategoriesState.initial() = _Initial;

  const factory AdminCategoriesState.adminCategoriesLoading() = AdminCategoriesLoading;

  //* Get Admin Categories List States
  const factory AdminCategoriesState.getAdminCategoriesListSuccess(List<Categories?> categoriesList) = GetAdminCategoriesListSuccess;
  const factory AdminCategoriesState.getAdminCategoriesListEmpty() = GetAdminCategoriesListEmpty;
  const factory AdminCategoriesState.getAdminCategoriesListFailure(String errorMessage) = GetAdminCategoriesListFailure;

  //* Add New Category States
  const factory AdminCategoriesState.addNewCategorySuccess() = AddNewCategorySuccess;
  const factory AdminCategoriesState.addNewCategoryFailure(String errorMessage) = AddNewCategoryFailure;

  //* Update Category States
  const factory AdminCategoriesState.updateCategorySuccess() = UpdateCategorySuccess;
  const factory AdminCategoriesState.updateCategoryFailure(String errorMessage) = UpdateCategoryFailure;

  //* Delete Category States
  const factory AdminCategoriesState.deleteCategorySuccess() = DeleteCategorySuccess;
  const factory AdminCategoriesState.deleteCategoryFailure(String errorMessage) = DeleteCategoryFailure;
}


