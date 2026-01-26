  import 'package:dio/dio.dart';
  import 'package:firebase_auth/firebase_auth.dart';
  import 'package:flutter/services.dart';
  import 'package:shoply/core/app/Networking/errors/error_handler.dart';
  import 'package:shoply/core/app/Networking/errors/firebase_error_handler.dart';
  import 'data_result.dart';

  Future<DataResult<T>> executeData<T>(Future<T> Function() dataCall) async {
    try {
      final result = await dataCall();
      return Success(result);
    } catch (e) {
      if (e is DioException) return Failure(ServerFailure.fromDioException(e));
      if (e is FirebaseAuthException || e is PlatformException) {
        return Failure(FirebaseErrorHandler.fromException(e));
      }
      return Failure(ServerFailure(e.toString()));
    }
  }

