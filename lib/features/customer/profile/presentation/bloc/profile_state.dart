part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = LoadingStae;
  const factory ProfileState.success({required UserRoleResponse userInfo}) = SuccessState;
  const factory ProfileState.error(String errorMessage) = ErrorState;

}
