import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoply/core/Services/hive/hive_database.dart';
import 'package:shoply/core/app/apis/errors/error_handler.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/features/admin/notifications/data/model/add_notification_model.dart';
import 'package:shoply/features/admin/notifications/repository/add_notification_repo.dart';

part 'admin_notifications_event.dart';

part 'admin_notifications_state.dart';

part 'admin_notifications_bloc.freezed.dart';

class AdminNotificationsBloc
    extends Bloc<AdminNotificationsEvent, AdminNotificationsState> {
  AdminNotificationsBloc()
      : super(const AdminNotificationsState.initial()) {
    on<CreateNotificationEvent>(_createNotification);
    on<FetchAdminNotificationsListEvent>(_fetchAdminNotificationsList);
    on<DeleteNotificationEvent>(_deleteNotification);
  }



  Future<FutureOr<void>> _createNotification(CreateNotificationEvent event,
      Emitter<AdminNotificationsState> emit) async {
    emit(const AdminNotificationsState.adminNotificationsLoading());
    try {
      await HiveDatabase().notificationBox!.add(event.body);
      emit(const AdminNotificationsState.addNotificationSuccess());
    } catch (e) {
      emit(AdminNotificationsState.addNotificationFailure(e.toString()));
    }
  }

  Future<FutureOr<void>> _fetchAdminNotificationsList(
      FetchAdminNotificationsListEvent event,
      Emitter<AdminNotificationsState> emit) async {
    emit(const AdminNotificationsState.adminNotificationsLoading());
    try {
      List<AddNotificationModel> notifications =
      HiveDatabase().notificationBox!.values.toList();
      if (notifications.isEmpty) {
        emit(const AdminNotificationsState.getAdminNotificationsListEmpty());
      } else {
        emit(AdminNotificationsState.getAdminNotificationsListSuccess(
            notifications));
      }
    } catch (e) {
      emit(AdminNotificationsState.getAdminNotificationsListFailure(
          e.toString()));
    }
  }

  FutureOr<void> _deleteNotification(DeleteNotificationEvent event,
      Emitter<AdminNotificationsState> emit) {
    emit(const AdminNotificationsState.adminNotificationsLoading());

    return HiveDatabase().notificationBox!.delete(event.notification).then((_) {
      emit(const AdminNotificationsState.deleteNotificationSuccess());
    }).catchError((error) {
      emit(AdminNotificationsState.deleteNotificationFailure(error.toString()));
    });
  }
}
