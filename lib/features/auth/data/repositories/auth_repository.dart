import 'package:shoply/core/app/Apis/api_result.dart';
import 'package:shoply/core/app/Apis/errors/api_error_handler.dart';
import 'package:shoply/core/app/Apis/errors/error_model.dart';
import 'package:shoply/features/auth/data/data_sources/auth_data_source.dart';
import 'package:shoply/features/auth/data/models/login/login_request.dart';
import 'package:shoply/features/auth/data/models/login/login_response.dart';
import 'package:shoply/features/auth/data/models/role/user_role_response.dart';

class AuthRepository {
  AuthRepository(this._authDataSource);

  final AuthDataSource _authDataSource;

  Future<ApiResult<LoginResponse>> login(LoginRequest body) async {
    try {
      final response = await _authDataSource.login(body);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<UserRoleResponse>> userRole() async {
    try {
      final response = await _authDataSource.userRole();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
