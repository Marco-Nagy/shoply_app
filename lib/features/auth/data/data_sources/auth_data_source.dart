import 'package:shoply/core/app/Apis/api_service.dart';
import 'package:shoply/core/app/Apis/graphQl/auth_queries.dart';
import 'package:shoply/features/auth/data/models/login/login_request.dart';
import 'package:shoply/features/auth/data/models/login/login_response.dart';
import 'package:shoply/features/auth/data/models/role/user_role_response.dart';

class AuthDataSource {
  AuthDataSource(this._apiService);

  ApiService _apiService;

  Future<LoginResponse> login(LoginRequest body) async {
    final response =
        await _apiService.login(AuthQueries().loginQuery(body: body));
    return response;
  }

  Future<UserRoleResponse> userRole(String id) async {
    final response =
        await _apiService.userRole(AuthQueries().userRoleQuery(id: id));
    return response;
  }
}
