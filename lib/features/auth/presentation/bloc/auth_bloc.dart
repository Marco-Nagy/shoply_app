import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shoply/core/Services/shared_preference/shared_pref_keys.dart';
import 'package:shoply/core/Services/shared_preference/shared_preference_helper.dart';
import 'package:shoply/features/auth/data/models/login/login_request.dart';
import 'package:shoply/features/auth/data/models/sign_up/signup_request.dart';
import 'package:shoply/features/auth/domain/entities/auth_provider_type.dart';
import 'package:shoply/features/auth/domain/repositories/auth_repository.dart';
import 'package:shoply/features/customer/profile/presentation/bloc/profile_bloc.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState<dynamic>> {
  AuthBloc(this._authRepository) : super(const AuthState.initial()) {
    on<LoginEvent>(_login);
    on<SignUpEvent>(_signUp);
    on<SocialSignInEvent>(_socialSignIn);
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
    final result = await _authRepository.signIn(
      AuthProviderType.email,
      loginRequest: LoginRequest(
          emailController.text.trim(), passwordController.text.trim()),
    );
    await result.when(
      success: (data) {

        emit(AuthState.success(userRole: data.role!));
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
    SignUpEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());

    /// call signUp method
    final result = await _authRepository.signIn(
      AuthProviderType.email,
      signupRequest: SignupRequest(
        name: nameController.text.trim(),
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
        avatar: event.imgUrl.trim(),
        role: event.role,
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

  Future<void> _socialSignIn(
      SocialSignInEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    final result = await _authRepository.signIn(
      event.type,
      signupRequest: SignupRequest(role: event.rule)
    );
    result.when(
      success: (user) {
        SharedPrefHelper().setString(key: SharedPrefKeys.userId, stringValue: user.id);

        emit(AuthState.success(userRole: user.role ?? UserRole.costumer.name));
      },
      failure: (error) {
        emit(AuthState.failure(error: error.errorMsg));
      },
    );
  }
}
