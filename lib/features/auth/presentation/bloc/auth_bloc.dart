import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoply/core/Services/shared_preference/shared_pref_keys.dart';
import 'package:shoply/core/Services/shared_preference/shared_preference_helper.dart';
import 'package:shoply/features/auth/data/models/login/login_request.dart';
import 'package:shoply/features/auth/data/models/login/login_response.dart';
import 'package:shoply/features/auth/data/models/role/user_role_response.dart';
import 'package:shoply/features/auth/data/repositories/auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState<dynamic>> {
  AuthBloc(this._authRepository) : super(const AuthState.initial()) {
    on<LoginEvent>(_login);
  }

  final AuthRepository _authRepository;
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  final formKye = GlobalKey<FormState>();

  Future<void> _login(
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
        await getUserRole();
        emit(AuthState.success(success));
      },
      failure: (error) {
        emit(AuthState.failure(error: error));
      },
    );
  }

  Future<void> getUserRole() async {
    emit(const AuthState.loading());

    /// call userRole method
    final result = await _authRepository.userRole();
    result.when(
      success: (UserRoleResponse success) {
        /// save user id if get profile successful
        SharedPrefHelper().setInt(
          key: SharedPrefKeys.userId,
          intValue: success.id ?? 0,
        );
        SharedPrefHelper().setString(
          key: SharedPrefKeys.userRole,
          stringValue: success.role!,
        );
        if (kDebugMode) {
          print('SharedPrefKeys.userRole  ${success.role} ');
        }
        emit(AuthState.success(success));
      },
      failure: (error) {
        emit(AuthState.failure(error: error));
      },
    );
  }
}
