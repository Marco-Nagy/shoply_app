import 'package:shoply/core/app/Apis/api_result.dart';
import 'package:shoply/core/app/apis/errors/error_handler.dart';
import 'package:shoply/features/admin/notifications/data/data_sources/add_notification_data_source.dart';

class AddNotificationRepo {
  AddNotificationDataSource _dataSource;

  AddNotificationRepo(this._dataSource);

  Future<ApiResult<void>> sendNotification({
    required String title,
    required String body,
    required String productId,
  }) async {
    try {
      var response = await _dataSource.sendNotifications(title: title, body: body, productId: productId);
        return ApiResult.success(response);

    }  catch (e) {
      return ApiResult.failure(ServerFailure(e.toString()));
    }
  }
}
