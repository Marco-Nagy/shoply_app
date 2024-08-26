part of 'send_notification_bloc.dart';

@freezed
class SendNotificationEvent with _$SendNotificationEvent {
  const factory SendNotificationEvent.started() = _Started;
  const factory SendNotificationEvent.sendNotificationEvent({
    required String title,
    required String body,
    required String productId,
    required int indexId,
  }) = SendNewNotificationEvent;
}
