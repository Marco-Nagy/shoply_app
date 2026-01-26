import 'package:injectable/injectable.dart';
import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/core/app/Networking/errors/error_handler.dart';
import 'package:shoply/features/auth/data/models/role/user_role_response.dart';
import 'package:shoply/features/profile/data/data_sources/profile_dat_source.dart';

@lazySingleton
class ProfileRepo {
  final ProfileDataSource _datSource;

  ProfileRepo(this._datSource);

  Future<DataResult<UserRoleResponse>> getProfile() async {
    try {
      final response = await _datSource.getUserProfile();

      return DataResult.success(response);
    } catch (error) {
      return DataResult.failure(ServerFailure(error.toString()));
    }
  }
}
