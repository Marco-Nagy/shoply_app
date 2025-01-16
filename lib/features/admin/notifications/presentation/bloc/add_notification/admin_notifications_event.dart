part of 'admin_notifications_bloc.dart';

@freezed
class AdminNotificationsEvent with _$AdminNotificationsEvent {
  const factory AdminNotificationsEvent.started() = _Started;

  const factory AdminNotificationsEvent.fetchAdminNotifications() =
      FetchAdminNotificationsListEvent;

  const factory AdminNotificationsEvent.createNewNotificationEvent(
      {required AddNotificationEntity body}) = CreateNotificationEvent;

  const factory AdminNotificationsEvent.updateNotificationEvent(
      {required AddNotificationEntity body}) = UpdateNotificationEvent;

  const factory AdminNotificationsEvent.deleteNotificationEvent(
      {required AddNotificationEntity notification}) = DeleteNotificationEvent;


}
