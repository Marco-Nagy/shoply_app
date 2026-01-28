part of 'admin_categories_bloc.dart';

@freezed
class AdminCategoriesEvent with _$AdminCategoriesEvent {
  const factory AdminCategoriesEvent.started() = _Started;

  // Old REST events (Not modified)
  const factory AdminCategoriesEvent.fetchAdminCategories() =
      FetchAdminCategoriesListEvent;
  const factory AdminCategoriesEvent.createNewCategoryEvent(
      {required CreateCategoryRequest body}) = CreateNewCategoryEvent;
  const factory AdminCategoriesEvent.updateCategoryEvent(
      {required UpdateCategoryRequest body}) = UpdateCategoryEvent;
  const factory AdminCategoriesEvent.deleteCategoryEvent(
      {required String categoryId}) = DeleteCategoryEvent;

  // New Firebase events (Added)
  const factory AdminCategoriesEvent.fetchFirebaseCategories() =
      FetchFirebaseCategoriesEvent;
  const factory AdminCategoriesEvent.createFirebaseCategory(
          {required MultilingualCategoryEntity category}) =
      CreateFirebaseCategoryEvent;
  const factory AdminCategoriesEvent.updateFirebaseCategory(
          {required MultilingualCategoryEntity category}) =
      UpdateFirebaseCategoryEvent;
  const factory AdminCategoriesEvent.deleteFirebaseCategory(
      {required String categoryId}) = DeleteFirebaseCategoryEvent;
}
