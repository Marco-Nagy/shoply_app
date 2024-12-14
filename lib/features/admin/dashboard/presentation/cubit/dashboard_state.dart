part of 'dashboard_bloc.dart';

@freezed
class DashboardState<T> with _$DashboardState {
  const factory DashboardState.loading() = LoadingState;
  // * Products *
  const factory DashboardState.errorProducts({required String error}) = ErrorProductsState;
  const factory DashboardState.successProducts({required String totalProducts}) = SuccessProductsState;
  //* Categories
  const factory DashboardState.errorCategories({required String error}) = ErrorCategoriesState;
  const factory DashboardState.successCategories({required String totalCategories}) = SuccessCategoriesState;
  //* Users
  const factory DashboardState.errorUsers({required String error}) = ErrorUsersState;
  const factory DashboardState.successUsers({required String totalUsers}) = SuccessUsersState;

}
