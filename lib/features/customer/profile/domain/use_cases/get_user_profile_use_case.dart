import 'package:injectable/injectable.dart';
import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/features/customer/profile/domain/entity/user_profile.dart';
import 'package:shoply/features/customer/profile/domain/repositories/user_profile_repo.dart';

@injectable
class GetUserProfileUseCase {
  final UserProfileRepo _repository;

  GetUserProfileUseCase(this._repository);

  Future<DataResult<UserProfile>> call(String userId) async {
    return await _repository.getUserInfo(id: userId);
  }
}
