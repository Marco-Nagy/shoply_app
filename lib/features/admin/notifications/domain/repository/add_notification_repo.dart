import 'package:injectable/injectable.dart';
import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/core/app/Networking/errors/error_handler.dart';
import 'package:shoply/features/admin/notifications/data/data_sources/add_notification_data_source.dart';

@lazySingleton
class AddNotificationRepo {
  final AddNotificationDataSource _dataSource;

  AddNotificationRepo(this._dataSource);

  Future<DataResult<void>> sendNotification({
    required String title,
    required String body,
    required String productId,
  }) async {
    try {
      var response = await _dataSource.sendNotifications(
          title: title, body: body, productId: productId);
      return DataResult.success(response);
    } catch (e) {
      return DataResult.failure(ServerFailure(e.toString()));
    }
  }
}
