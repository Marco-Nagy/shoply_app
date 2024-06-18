part of 'auth_bloc.dart';

@freezed
class AuthState<T> with _$AuthState<T> {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = LoadingState;
  const factory AuthState.success(T data) = SuccessState<T>;
  const factory AuthState.failure({required ErrorHandler error}) = FailureState;
}
