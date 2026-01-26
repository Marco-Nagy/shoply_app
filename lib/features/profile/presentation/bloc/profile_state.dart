part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = LoadingStae;
  const factory ProfileState.success({required UserProfile userInfo}) =
      SuccessState;
  const factory ProfileState.error(String errorMessage) = ErrorState;
  const factory ProfileState.role(String role) = RoleState;
}
