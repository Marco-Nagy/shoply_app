import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shoply/core/Services/localDataSource/hive_database.dart';
import 'package:shoply/features/admin/notifications/data/model/add_notification_model.dart';
import 'package:shoply/features/admin/notifications/domain/entities/add_notification_entity.dart';

part 'admin_notifications_bloc.freezed.dart';
part 'admin_notifications_event.dart';
part 'admin_notifications_state.dart';

@injectable
class AdminNotificationsBloc
    extends Bloc<AdminNotificationsEvent, AdminNotificationsState> {
  AdminNotificationsBloc(this._hiveHelper)
      : super(const AdminNotificationsState.initial()) {
    on<CreateNotificationEvent>(_createNotification);
    on<FetchAdminNotificationsListEvent>(_fetchAdminNotificationsList);
    on<DeleteNotificationEvent>(_deleteNotification);
  }

  final HiveDatabaseHelper _hiveHelper;

  Future<FutureOr<void>> _createNotification(CreateNotificationEvent event,
      Emitter<AdminNotificationsState> emit) async {
    emit(const AdminNotificationsState.adminNotificationsLoading());
    try {
      // Convert entity to model and save

      // Convert entity to model and save
      final model = AddNotificationModel(
        title: event.body.title,
        body: event.body.body,
        createAt: event.body.createAt,
        productId: event.body.productId,
        productName: event.body.productName,
      );

      await _hiveHelper.addEntity<AddNotificationModel>(model);
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
      final notifications =
          await _hiveHelper.getAllEntities<AddNotificationModel>(
        HiveDatabaseHelper.notificationBoxName,
      );
      if (notifications.isEmpty) {
        emit(const AdminNotificationsState.getAdminNotificationsListEmpty());
      } else {
        // Convert AddNotificationModel to AddNotificationEntity
        emit(AdminNotificationsState.getAdminNotificationsListSuccess(
            notifications
                .map(
                  (model) => AddNotificationEntity(
                    title: model.title,
                    body: model.body,
                    createAt: model.createAt,
                    productId: model.productId,
                    productName: model.productName,
                  ),
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

    return _hiveHelper
        .deleteEntity<AddNotificationModel>(
      HiveDatabaseHelper.notificationBoxName,
      event.notification,
    )
        .then((_) {
      emit(const AdminNotificationsState.deleteNotificationSuccess());
    }).catchError((error) {
      emit(AdminNotificationsState.deleteNotificationFailure(error.toString()));
    });
  }
}
