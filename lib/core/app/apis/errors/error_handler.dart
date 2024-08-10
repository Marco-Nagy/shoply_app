import 'package:dio/dio.dart';

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
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');

      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioException.response!.statusCode,
            dioException.response!.data,);
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was Canceled');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected Error, Please try again!');
      default:
        return ServerFailure('Opps There was an Error, Please try again');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, ErrorModel response) {
    switch (statusCode) {
      case 401:
      case 402:
      case 403:
        return ServerFailure(response.message);
      case 404:
        return ServerFailure('Yor Request not found , Please Try later!');
      case 500:
        return ServerFailure('Internal Server error , Please Try later!');
      default:
        return ServerFailure('Opps There was an Error, Please try again');
    }
  }
}
