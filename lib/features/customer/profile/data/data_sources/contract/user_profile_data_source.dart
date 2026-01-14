import 'package:shoply/features/auth/data/models/auth_user_response.dart';

abstract class UserProfileDataSource {
  Future<void> updateUserProfile(AuthUserResponse profile);
  Future<AuthUserResponse?> getProfile(String uid);
}