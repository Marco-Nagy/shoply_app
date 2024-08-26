part of 'send_notification_bloc.dart';

@freezed
class SendNotificationState with _$SendNotificationState {
  const factory SendNotificationState.initial() = _Initial;
  //* Send Notification States
  const factory SendNotificationState.sendingNotificationLoading({ required int index}) = SendingNotificationLoading;
  const factory SendNotificationState.sendNotificationSuccess() =
  SendNotificationSuccess;

  const factory SendNotificationState.sendNotificationFailure(
      String errorMessage) = SendNotificationFailure;
}
