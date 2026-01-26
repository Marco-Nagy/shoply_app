import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/core/app/Networking/execute_data.dart';
import 'package:shoply/features/profile/data/data_sources/contract/user_profile_data_source.dart';
import 'package:shoply/features/profile/data/mappers/profile_mappers.dart';
import 'package:shoply/features/profile/domain/entity/user_profile.dart';
import 'package:shoply/features/profile/domain/repositories/user_profile_repo.dart';

@Injectable(as: UserProfileRepo)
class UserProfileRepoImpl implements UserProfileRepo {
  final UserProfileDataSource _dataSource;

  UserProfileRepoImpl(this._dataSource);

  @override
  Future<DataResult<UserProfile>> getUserInfo({required String id}) async {
    return executeData(
      () async {
        var response = await _dataSource.getProfile(id);
        debugPrint('response: ${response!.role}');
        return response.toUserProfile();
      },
    );
  }

  @override
  Future<DataResult<UserProfile>> updateUserInfo({
    required UserProfile profile,
  }) async {
    return executeData(() async {
      return await _dataSource
          .updateUserProfile(profile.toUserProfileResponse());
    });
  }
}
