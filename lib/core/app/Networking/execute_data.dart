import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:shoply/core/app/Networking/errors/error_handler.dart';
import 'package:shoply/core/app/Networking/errors/firebase_error_handler.dart';
import 'data_result.dart';

Future<DataResult<T>> executeData<T>(Future<T> Function() apiCall) async {
  try {
    var result = await apiCall.call();
    return Success(result);
  } on Exception catch (e) {
    if (e is DioException) {
      return Failure(ServerFailure.fromDioException(e));
    }
    if (e is FirebaseAuthException ||
        e is FirebaseException ||
        e is PlatformException) {
      return Failure(FirebaseErrorHandler.fromException(e));
    }
    return Failure(ServerFailure(e.toString()));
  }
}
