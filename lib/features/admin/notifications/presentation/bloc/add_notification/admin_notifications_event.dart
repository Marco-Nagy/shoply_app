part of 'admin_notifications_bloc.dart';

@freezed
class AdminNotificationsEvent with _$AdminNotificationsEvent {
  const factory AdminNotificationsEvent.started() = _Started;

  const factory AdminNotificationsEvent.fetchAdminNotifications() =
      FetchAdminNotificationsListEvent;

  const factory AdminNotificationsEvent.createNewNotificationEvent(
      {required AddNotificationModel body}) = CreateNotificationEvent;

  const factory AdminNotificationsEvent.updateNotificationEvent(
      {required AddNotificationModel body}) = UpdateNotificationEvent;

  const factory AdminNotificationsEvent.deleteNotificationEvent(
      {required AddNotificationModel notification}) = DeleteNotificationEvent;


}
