import 'package:dio/dio.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/helpers/extension/string_exetension.dart';
import 'error_model.dart';

abstract class ErrorHandler {
  ErrorHandler(this.errorMsg);
  final String errorMsg;
}

class ServerFailure extends ErrorHandler {
  ServerFailure(super.errorMsg);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(LangKeys.errorConnectionTimeout.toTranslate());
      case DioExceptionType.sendTimeout:
        return ServerFailure(LangKeys.errorSendTimeout.toTranslate());
      case DioExceptionType.receiveTimeout:
        return ServerFailure(LangKeys.errorReceiveTimeout.toTranslate());

      case DioExceptionType.badCertificate:
        return ServerFailure(LangKeys.errorBadCertificate.toTranslate());
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(LangKeys.errorRequestCanceled.toTranslate());
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure(LangKeys.errorNoInternet.toTranslate());
        }
        return ServerFailure(LangKeys.errorUnexpected.toTranslate());
      default:
        return ServerFailure(LangKeys.errorGeneral.toTranslate());
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, ErrorModel response) {
    switch (statusCode) {
      case 401:
      case 402:
      case 403:
        return ServerFailure(response.message);
      case 404:
        return ServerFailure(LangKeys.errorNotFound.toTranslate());
      case 500:
        return ServerFailure(LangKeys.errorInternalServer.toTranslate());
      default:
        return ServerFailure(LangKeys.errorGeneral.toTranslate());
    }
  }
}
