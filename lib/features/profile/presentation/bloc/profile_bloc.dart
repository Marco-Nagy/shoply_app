import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shoply/core/Services/shared_preference/shared_pref_keys.dart';
import 'package:shoply/core/Services/shared_preference/shared_preference_helper.dart';
import 'package:shoply/features/profile/domain/entity/user_profile.dart';
import 'package:shoply/features/profile/domain/use_cases/get_user_profile_use_case.dart';
import 'package:shoply/features/profile/domain/use_cases/update_user_profile_use_case.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

enum UserRole { costumer, admin }

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this._getUserProfileUseCase,
      this._updateUserProfileUseCase)
      : super(const ProfileState.loading()) {
    on<GetUserInfoEvent>(_getUserInfo);
    on<ChangeUserRoleEvent>(_changeUserRole);
    on<UpdateUserInfoEvent>(_updateUserInfo);
  }
  String role = UserRole.costumer.name;
  final GetUserProfileUseCase _getUserProfileUseCase;
  final UpdateUserProfileUseCase _updateUserProfileUseCase;
  UserProfile? userInfo;

  Future<FutureOr<void>> _getUserInfo(
      GetUserInfoEvent event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());
    String? userId = SharedPrefHelper().getString(key: SharedPrefKeys.userId);
    final result = await _getUserProfileUseCase(userId!);

    result.when(
      success: (data) {
        userInfo = data;
        role = data.role;
        SharedPrefHelper().setString(key: SharedPrefKeys.userRole, stringValue: data.role);
        SharedPrefHelper()
            .setString(key: SharedPrefKeys.userRole, stringValue: role);
        debugPrint(' SharedPrefKeys.userRole: $role');
        debugPrint(' SharedPrefKeys.userRole: ${data.role}');
        emit(ProfileState.success(userInfo: data));

      },
      failure: (errorHandler) {
        emit(ProfileState.error(errorHandler.errorMsg));
      },
    );
  }

  // Change User Role
  Future<FutureOr<void>> _changeUserRole(
      ChangeUserRoleEvent event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());
    if (role == UserRole.costumer.name) {
      role = UserRole.admin.name;
    } else {
      role = UserRole.costumer.name;
    }


    emit(ProfileState.role(role));
  }

  Future<FutureOr<void>> _updateUserInfo(
      UpdateUserInfoEvent event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());
    final result = await _updateUserProfileUseCase(event.profile);

    result.when(
      success: (data) {
        emit(ProfileState.success(userInfo: data));
      },
      failure: (errorHandler) {
        emit(ProfileState.error(errorHandler.errorMsg));
      },
    );
  }
}
