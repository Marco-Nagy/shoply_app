import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
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

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._authDataSource, this._firebaseDataSource);

  final AuthDataSource _authDataSource;
  final FirebaseDataSource _firebaseDataSource;

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
    return response.when(success: (data) {
      return DataResult.success(data.toDomain());
    }, failure: (error) {
      return DataResult.failure(error);
    });
  }
}
