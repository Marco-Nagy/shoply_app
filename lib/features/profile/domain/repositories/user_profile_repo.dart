import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/features/profile/domain/entity/user_profile.dart';

abstract class UserProfileRepo {
  Future<DataResult<UserProfile>> getUserInfo({required String id});
  Future<DataResult<UserProfile>> updateUserInfo({required UserProfile profile});
}
