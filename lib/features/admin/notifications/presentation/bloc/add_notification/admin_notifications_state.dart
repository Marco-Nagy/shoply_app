part of 'admin_notifications_bloc.dart';

@freezed
class AdminNotificationsState with _$AdminNotificationsState {
  const factory AdminNotificationsState.initial() = _Initial;

  const factory AdminNotificationsState.adminNotificationsLoading() =
      AdminNotificationsLoading;

  //* Get Admin Notifications List States
  const factory AdminNotificationsState.getAdminNotificationsListSuccess(
          List<AddNotificationModel?> notificationsList) =
      GetAdminNotificationsListSuccess;

  const factory AdminNotificationsState.getAdminNotificationsListEmpty() =
      GetAdminNotificationsListEmpty;

  const factory AdminNotificationsState.getAdminNotificationsListFailure(
      String errorMessage) = GetAdminNotificationsListFailure;

  //* Add New Notification States
  const factory AdminNotificationsState.addNotificationSuccess() =
      AddNewNotificationSuccess;

  const factory AdminNotificationsState.addNotificationFailure(
      String errorMessage) = AddNewNotificationFailure;


  //* Delete Notification States
  const factory AdminNotificationsState.deleteNotificationSuccess() =
      DeleteNotificationSuccess;

  const factory AdminNotificationsState.deleteNotificationFailure(
      String errorMessage) = DeleteNotificationFailure;


}
