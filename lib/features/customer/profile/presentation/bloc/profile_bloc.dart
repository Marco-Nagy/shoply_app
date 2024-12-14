import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoply/features/auth/data/models/role/user_role_response.dart';
import 'package:shoply/features/customer/profile/data/repositories/profile_repo.dart';

part 'profile_event.dart';

part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this._profileRepo) : super(const ProfileState.loading()) {
    on<GetUserInfoEvent>(_getUserInfo);
  }

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
}
