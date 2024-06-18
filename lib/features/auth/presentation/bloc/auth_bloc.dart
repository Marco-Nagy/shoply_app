import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoply/core/Services/shared_preference/shared_pref_keys.dart';
import 'package:shoply/core/Services/shared_preference/shared_preference_helper.dart';
import 'package:shoply/core/app/Apis/errors/api_error_handler.dart';
import 'package:shoply/features/auth/data/models/login/login_request.dart';
import 'package:shoply/features/auth/data/models/login/login_response.dart';
import 'package:shoply/features/auth/data/models/role/user_role_response.dart';
import 'package:shoply/features/auth/data/repositories/auth_repository.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authRepository) : super(const AuthState.initial()) {
    on<LoginEvent>(_login);
  }

  final AuthRepository _authRepository;
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Future<void> _login(LoginEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    /// call login method
    final result = await _authRepository.login(
      LoginRequest(emailController.text.trim(), passwordController.text.trim()),
    );
    result.when(
      success: (LoginResponse success) {
        /// save access token if login successful
        SharedPrefHelper().setString(
          key: SharedPrefKeys.accessToken,
          stringValue: success.data?.login?.accessToken ?? '',
        );

        /// call userProfile method to get User Role
        _getUserRole(event, emit);
        emit(AuthState.success(success));
      },
      failure: (ErrorHandler error) {
        emit(AuthState.failure(error: ErrorHandler.handle(error)));
      },
    );
  }

  Future<void> _getUserRole(LoginEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    /// call userRole method
    final result = await _authRepository.userRole();
    result.when(
      success: (UserRoleResponse success) {
        /// save user id if get profile successful
        SharedPrefHelper().setInt(
          key: SharedPrefKeys.accessToken,
          intValue: success.id ?? 0,
        );
        SharedPrefHelper().setString(
          key: SharedPrefKeys.userRole,
          stringValue: success.role ?? ' ',
        );
        emit(AuthState.success(success));
      },
      failure: (ErrorHandler error) {
        emit(AuthState.failure(error: ErrorHandler.handle(error)));
      },
    );
  }
}
