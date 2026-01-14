import 'package:shoply/features/customer/profile/data/models/user_profile_response.dart';
import 'package:shoply/features/customer/profile/domain/entity/user_profile.dart';

abstract class UserProfileDataSource {
  Future<void> createUserProfile(UserProfileResponse profile);
  Future<UserProfileResponse?> getProfile(String uid);
  Future<UserProfile> updateUserProfile(UserProfileResponse profile);
}
