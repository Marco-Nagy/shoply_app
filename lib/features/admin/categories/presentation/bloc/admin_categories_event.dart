part of 'admin_categories_bloc.dart';

@freezed
class AdminCategoriesEvent with _$AdminCategoriesEvent {
  const factory AdminCategoriesEvent.started() = _Started;
  const factory AdminCategoriesEvent.fetchAdminCategories() =FetchAdminCategoriesListEvent;

  const factory AdminCategoriesEvent.createNewCategoryEvent(
      {required CreateCategoryRequest body}) = CreateNewCategoryEvent;

  const factory AdminCategoriesEvent.updateCategoryEvent(
      {required UpdateCategoryRequest body}) = UpdateCategoryEvent;

  const factory AdminCategoriesEvent.deleteCategoryEvent(
      {required String categoryId}) = DeleteCategoryEvent;
}
