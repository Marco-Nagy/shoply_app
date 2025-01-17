import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoply/core/Services/localDataSource/isar_database_helper.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/features/admin/notifications/data/model/add_notification_table_schema.dart';

part 'admin_notifications_bloc.freezed.dart';
part 'admin_notifications_event.dart';
part 'admin_notifications_state.dart';

class AdminNotificationsBloc
    extends Bloc<AdminNotificationsEvent, AdminNotificationsState> {
  AdminNotificationsBloc() : super(const AdminNotificationsState.initial()) {
    on<CreateNotificationEvent>(_createNotification);
    on<FetchAdminNotificationsListEvent>(_fetchAdminNotificationsList);
    on<DeleteNotificationEvent>(_deleteNotification);
  }

  Future<FutureOr<void>> _createNotification(
      CreateNotificationEvent event,
      Emitter<AdminNotificationsState> emit) async {
    emit(const AdminNotificationsState.adminNotificationsLoading());
    try {
      final isarHelper = sl<IsarDatabaseHelper>();

      // // Ensure Isar is initialized
      // if (isarHelper.isar == null) {
      //   await isarHelper.initialize();
      // }

      // Convert entity to schema and save
      await isarHelper.addEntity(event.body.toSchema());
      emit(const AdminNotificationsState.addNotificationSuccess());
    } catch (e) {
      emit(AdminNotificationsState.getAdminNotificationsListFailure(
          e.toString()));
    }
  }


  Future<FutureOr<void>> _fetchAdminNotificationsList(
      FetchAdminNotificationsListEvent event,
      Emitter<AdminNotificationsState> emit) async {
    emit(const AdminNotificationsState.adminNotificationsLoading());
    try {
      final isarHelper = sl<IsarDatabaseHelper>();
      // if (isarHelper.isar == null) {
      //   await isarHelper.initialize(); // Ensure Isar is initialized
      // }

      final notifications =
          await isarHelper.getAllEntities<AddNotificationTableSchema>();
      if (notifications.isEmpty) {
        emit(const AdminNotificationsState.getAdminNotificationsListEmpty());
      } else {
        emit(AdminNotificationsState.getAdminNotificationsListSuccess(
            notifications
                .map(
                  (e) => AddNotificationEntity.fromSchema(e),
                )
                .toList()));
      }
    } catch (e) {
      emit(AdminNotificationsState.getAdminNotificationsListFailure(
          e.toString()));
    }
  }

  FutureOr<void> _deleteNotification(
      DeleteNotificationEvent event, Emitter<AdminNotificationsState> emit) {
    emit(const AdminNotificationsState.adminNotificationsLoading());

    return sl<IsarDatabaseHelper>().deleteEntity(event.notification).then((_) {
      emit(const AdminNotificationsState.deleteNotificationSuccess());
    }).catchError((error) {
      emit(AdminNotificationsState.deleteNotificationFailure(error.toString()));
    });
  }
}
