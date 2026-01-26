import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:shoply/core/Services/shared_preference/shared_pref_keys.dart';
import 'package:shoply/core/Services/shared_preference/shared_preference_helper.dart';
import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/core/app/Networking/errors/error_handler.dart';
import 'package:shoply/features/auth/data/data_sources/contracts/auth_data_source.dart';
import 'package:shoply/features/auth/data/data_sources/contracts/firebase_data_source.dart';
import 'package:shoply/features/auth/data/mappers/auth_mappers.dart';
import 'package:shoply/features/auth/data/models/auth_user_response.dart';
import 'package:shoply/features/auth/data/models/login/login_request.dart';
import 'package:shoply/features/auth/data/models/login/login_response.dart';
import 'package:shoply/features/auth/data/models/role/user_role_response.dart';
import 'package:shoply/features/auth/data/models/sign_up/signup_request.dart';
import 'package:shoply/features/auth/data/models/sign_up/signup_response.dart';
import 'package:shoply/features/auth/domain/entities/auth_provider_type.dart';
import 'package:shoply/features/auth/domain/entities/auth_user.dart';
import 'package:shoply/features/auth/domain/repositories/auth_repository.dart';
import 'package:shoply/features/profile/data/data_sources/contract/user_profile_data_source.dart';
import 'package:shoply/features/profile/data/models/user_profile_response.dart';
import 'package:shoply/features/profile/presentation/bloc/profile_bloc.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._authDataSource, this._firebaseDataSource,
      this._userProfileDataSource);

  final AuthDataSource _authDataSource;
  final FirebaseDataSource _firebaseDataSource;
  final UserProfileDataSource _userProfileDataSource;

  Future<DataResult<LoginResponse>> login(LoginRequest body) async {
    try {
      final response = await _authDataSource.login(body);
      if (response.data != null) {
        return DataResult.success(response);
      }
      return DataResult.failure(
          ServerFailure(response.errorResponse!.first.message));
    } on DioException catch (dioError) {
      return DataResult.failure(ServerFailure.fromDioException(dioError));
    } catch (error) {
      return DataResult.failure(ServerFailure(error.toString()));
    }
  }

  Future<UserRoleResponse> userRole() async {
    final response = await _authDataSource.userRole();
    return response;
  }

  Future<DataResult<SignupResponse>> signUp(SignupRequest body) async {
    try {
      final response = await _authDataSource.signUp(body);
      return DataResult.success(response);
    } catch (error) {
      return DataResult.failure(ServerFailure(error.toString()));
    }
  }

  @override
  Future<DataResult<AuthUser>> signIn(AuthProviderType provider,
      {LoginRequest? loginRequest, SignupRequest? signupRequest}) async {
    var response = await _firebaseDataSource.signIn(provider,
        loginRequest: loginRequest, signupRequest: signupRequest);
    return response.when(success: (data) async {
      var user = await _userProfileDataSource.getProfile(data.uid);

      String userRole = UserRole.costumer.name; // Default role

      if (user == null) {
        // New user - create profile with role from signup request or default
        userRole = signupRequest?.role ?? UserRole.costumer.name;
        _userProfileDataSource.createUserProfile(UserProfileResponse(
            uid: data.uid,
            name: data.name,
            email: data.email,
            avatarUrl: data.avatarUrl,
            role: userRole));
      } else {
        // Existing user - get role from Firestore profile
        userRole = user.role;
      }

      // Save user data to SharedPreferences
      SharedPrefHelper()
          .setString(key: SharedPrefKeys.userId, stringValue: data.uid);
      SharedPrefHelper()
          .setString(key: SharedPrefKeys.userRole, stringValue: userRole);

      debugPrint('DEBUG: Saved userRole to SharedPreferences: $userRole');
      debugPrint('executeData success: ${data.toJson()}');

      // Update the AuthUserResponse with the role from Firestore
      final updatedData = AuthUserResponse(
        uid: data.uid,
        name: data.name,
        email: data.email,
        avatarUrl: data.avatarUrl,
        role: userRole,
      );

      return DataResult.success(updatedData.toDomain());
    }, failure: (error) {
      debugPrint('executeData error: $error');
      return DataResult.failure(error);
    });
  }
}
