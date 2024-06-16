import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shoply/core/Services/shared_preference/shared_pref_keys.dart';
import 'package:shoply/core/Services/shared_preference/shared_preference_helper.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getInstance() {
    const timeOut = Duration(seconds: 30);
    final accessToken =
        SharedPrefHelper().getString(key: SharedPrefKeys.accessToken);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut
        ..options.headers['Authorization'] =
            'Bearer ${accessToken ?? 'Null Token'}';
      addDioInterceptors();
      return dio!;
    }
    return dio!;
  }

  static void addDioInterceptors() {
    dio!.interceptors.add(
      PrettyDioLogger(
        responseHeader: true,
        requestHeader: true,
        requestBody: true,
      ),
    );
  }
}
