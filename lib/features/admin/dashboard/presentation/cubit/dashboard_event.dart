part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.started() = _Started;
  const factory DashboardEvent.getProductsEvent() = GetProductsEvent;
  const factory DashboardEvent.getCategoriesEvent() = GetCategoriesEvent;
  const factory DashboardEvent.getUsersEvent() = GetUsersEvent;
}
