import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoply/features/admin/notifications/repository/add_notification_repo.dart';

part 'send_notification_bloc.freezed.dart';
part 'send_notification_event.dart';
part 'send_notification_state.dart';

class SendNotificationBloc extends Bloc<SendNotificationEvent, SendNotificationState> {
  SendNotificationBloc(this._notificationRepo) : super(const SendNotificationState.initial()) {
    on<SendNewNotificationEvent>(_sendNotification);
  }

final AddNotificationRepo _notificationRepo;
Future<FutureOr<void>> _sendNotification(SendNewNotificationEvent event,
    Emitter<SendNotificationState> emit) async {
  emit( SendNotificationState.sendingNotificationLoading(index: event.indexId));
  final result = await _notificationRepo.sendNotification(
    title: event.title,
    body: event.body,
    productId: event.productId,
  );
  result.when(
    success: (data) {
      emit(const SendNotificationState.sendNotificationSuccess());
    },
    failure: (errorHandler) {
      emit(SendNotificationState.sendNotificationFailure(
          errorHandler.errorMsg));
    },
  );
}
}

