import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoply/core/app/Networking/errors/error_handler.dart';
part 'data_result.freezed.dart';

@Freezed()
abstract class DataResult<T> with _$DataResult<T> {
  const factory DataResult.success(T data) = Success<T>;

  const factory DataResult.failure(ErrorHandler errorHandler) = Failure<T>;
}
