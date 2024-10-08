import 'package:dio/dio.dart';
import 'package:shoply/core/app/Apis/api_result.dart';
import 'package:shoply/core/app/apis/errors/error_handler.dart';
import 'package:shoply/features/auth/data/data_sources/auth_data_source.dart';
import 'package:shoply/features/auth/data/models/login/login_request.dart';
import 'package:shoply/features/auth/data/models/login/login_response.dart';
import 'package:shoply/features/auth/data/models/role/user_role_response.dart';
import 'package:shoply/features/auth/data/models/sign_up/signup_request.dart';
import 'package:shoply/features/auth/data/models/sign_up/signup_response.dart';

class AuthRepository {
  AuthRepository(this._authDataSource);

  final AuthDataSource _authDataSource;

  Future<ApiResult<LoginResponse>> login(LoginRequest body) async {
    try {
      final response = await _authDataSource.login(body);
      if (response.data != null) {
        return ApiResult.success(response);
      }
      return ApiResult.failure(
          ServerFailure(response.errorResponse!.first.message));
    } on DioException catch (dioError) {
      return ApiResult.failure(ServerFailure.fromDioException(dioError));
    } catch (error) {
      return ApiResult.failure(ServerFailure(error.toString()));
    }
  }

  Future<UserRoleResponse> userRole() async {
    final response = await _authDataSource.userRole();
    return response;
  }
  Future<ApiResult<SignupResponse>> signUp(SignupRequest body) async {
    try {
      final response = await _authDataSource.signUp(body);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ServerFailure(error.toString()));
    }
  }
}
