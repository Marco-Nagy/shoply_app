import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shoply/core/Services/shared_preference/shared_pref_keys.dart';
import 'package:shoply/core/Services/shared_preference/shared_preference_helper.dart';
import 'package:shoply/features/auth/data/models/role/user_role_response.dart';
import 'package:shoply/features/customer/profile/data/repositories/profile_repo.dart';

part 'profile_event.dart';

part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

enum UserRole { costumer, admin }

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this._profileRepo) : super(const ProfileState.loading()) {
    on<GetUserInfoEvent>(_getUserInfo);
    on<ChangeUserRoleEvent>(_changeUserRole);
  }
  String role = UserRole.costumer.name;
  final ProfileRepo _profileRepo;

  Future<FutureOr<void>> _getUserInfo(
      GetUserInfoEvent event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());
    final result = await _profileRepo.getProfile();
    result.when(
      success: (data) {
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
    SharedPrefHelper().setString(key: SharedPrefKeys.userRole, stringValue: role);
    debugPrint('Role: $role');
    emit(ProfileState.role(role));
  }
}
