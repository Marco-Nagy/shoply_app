import 'package:dio/dio.dart';
import 'package:shoply/core/app/Apis/api_result.dart';
import 'package:shoply/core/app/apis/errors/error_handler.dart';
import 'package:shoply/features/auth/data/models/role/user_role_response.dart';
import 'package:shoply/features/customer/profile/data/data_sources/profile_dat_source.dart';

class ProfileRepo {
  final ProfileDataSource _datSource;

  ProfileRepo(this._datSource);

  Future<ApiResult<UserRoleResponse>> getProfile() async {
    try {
      final response = await _datSource.getUserProfile();

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ServerFailure(error.toString()));
    }
  }
}
