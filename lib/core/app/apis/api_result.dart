
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoply/core/app/Apis/errors/api_error_handler.dart';
import 'package:shoply/core/app/Apis/errors/error_model.dart';
part 'api_result.freezed.dart';

@Freezed()
abstract class ApiResult<T> with _$ApiResult<T>{
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.failure(ErrorHandler error) = Failure<T>;
}