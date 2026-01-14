import 'package:injectable/injectable.dart';
import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/features/customer/profile/domain/entity/user_profile.dart';
import 'package:shoply/features/customer/profile/domain/repositories/user_profile_repo.dart';

@injectable
class UpdateUserProfileUseCase {
  final UserProfileRepo _repository;

  UpdateUserProfileUseCase(this._repository);

  Future<DataResult<UserProfile>> call(UserProfile profile) async {
    return await _repository.updateUserInfo(profile: profile);
  }
}
