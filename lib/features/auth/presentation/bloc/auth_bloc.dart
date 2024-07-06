import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoply/core/Services/shared_preference/shared_pref_keys.dart';
import 'package:shoply/core/Services/shared_preference/shared_preference_helper.dart';
import 'package:shoply/features/auth/data/models/login/login_request.dart';
import 'package:shoply/features/auth/data/models/login/login_response.dart';
import 'package:shoply/features/auth/data/models/role/user_role_response.dart';
import 'package:shoply/features/auth/data/models/sign_up/signup_request.dart';
import 'package:shoply/features/auth/data/models/sign_up/signup_response.dart';
import 'package:shoply/features/auth/data/repositories/auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState<dynamic>> {
  AuthBloc(this._authRepository) : super(const AuthState.initial()) {
    on<LoginEvent>(_login);
    on<SignUpEvent>(_signUp);
  }

  final AuthRepository _authRepository;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  final formKye = GlobalKey<FormState>();

  FutureOr<void> _login(
    LoginEvent event,
    Emitter<AuthState<dynamic>> emit,
  ) async {
    emit(const AuthState.loading());

    /// call login method
    final result = await _authRepository.login(
      LoginRequest(emailController.text.trim(), passwordController.text.trim()),
    );
    await result.when(
      success: (LoginResponse success) async {
        /// save access token if login successful
        await SharedPrefHelper().setString(
          key: SharedPrefKeys.accessToken,
          stringValue: success.data?.login!.accessToken ?? '',
        );

        /// call userProfile method to get User Role
      final userRole=  await _authRepository.userRole();

        emit(AuthState.success(userRole: userRole.role!));
      },
      failure: (error) {
        debugPrint('error.errorMsg ${error.errorMsg}');
        emit(AuthState.failure(error: error.errorMsg));
      },
    );
  }

  // Future<void> getUserRole() async {
  //   emit(const AuthState.loading());
  //
  //   /// call userRole method
  //   final result = await _authRepository.userRole();
  //   result.when(
  //     success: (UserRoleResponse success) {
  //       /// save user id if get profile successful
  //       SharedPrefHelper().setInt(
  //         key: SharedPrefKeys.userId,
  //         intValue: success.id ?? 0,
  //       );
  //       SharedPrefHelper().setString(
  //         key: SharedPrefKeys.userRole,
  //         stringValue: success.role!,
  //       );
  //       if (kDebugMode) {
  //         print('SharedPrefKeys.userRole  ${success.role} ');
  //       }
  //       emit(AuthState.success(success));
  //     },
  //     failure: (error) {
  //       emit(AuthState.failure(error: error));
  //     },
  //   );
  // }

  Future<FutureOr<void>> _signUp(
      SignUpEvent event, Emitter<AuthState> emit,) async {
    emit(const AuthState.loading());

    /// call signUp method
    final result = await _authRepository.signUp(
      SignupRequest(
        name: nameController.text.trim(),
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
        avatar: event.imgUrl.trim(),
      ),
    );
    result.when(
      success: (_) {
        add(const AuthEvent.login());
      },
      failure: (error) {
        emit(AuthState.failure(error: error.errorMsg));
      },
    );
  }
}
