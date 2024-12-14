import 'package:shoply/core/Services/shared_preference/shared_pref_keys.dart';
import 'package:shoply/core/Services/shared_preference/shared_preference_helper.dart';
import 'package:shoply/core/app/Apis/api_service.dart';
import 'package:shoply/core/app/Apis/graphQl/auth_queries.dart';
import 'package:shoply/features/auth/data/models/login/login_request.dart';
import 'package:shoply/features/auth/data/models/login/login_response.dart';
import 'package:shoply/features/auth/data/models/role/user_role_response.dart';
import 'package:shoply/features/auth/data/models/sign_up/signup_request.dart';
import 'package:shoply/features/auth/data/models/sign_up/signup_response.dart';

class AuthDataSource {
  AuthDataSource(this._apiService);

  final ApiService _apiService;

  Future<LoginResponse> login(LoginRequest body) async {
    return await _apiService.login(AuthQueries().loginQuery(body: body));
  }

  Future<UserRoleResponse> userRole() async {
    final accessToken =
        SharedPrefHelper().getString(key: SharedPrefKeys.accessToken) ?? '';
    return await _apiService.userRole(
      'Bearer ${accessToken ?? 'Null Token'}',
    );
  }
  Future<SignupResponse> signUp(SignupRequest body) async {
    return await _apiService.signUp(
      AuthQueries().signUpQuery(body: body),
    );
  }
}
