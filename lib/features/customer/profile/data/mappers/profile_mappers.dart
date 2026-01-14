import 'package:shoply/features/auth/data/models/auth_user_response.dart';
import 'package:shoply/features/customer/profile/data/models/user_profile_response.dart';
import 'package:shoply/features/customer/profile/domain/entity/user_profile.dart';

extension AuthUserResponseMapper on AuthUserResponse {
  /// Convert AuthUserResponse to UserProfile domain entity
  UserProfile toUserProfile() {
    return UserProfile(
      uid: uid,
      name: name,
      email: email,
      avatarUrl: avatarUrl,
      role: role ?? 'customer',
    );
  }

  /// Convert AuthUserResponse to UserProfileResponse
  UserProfileResponse toUserProfileResponse() {
    return UserProfileResponse(
      uid: uid,
      name: name,
      email: email,
      avatarUrl: avatarUrl,
      role: role ?? 'customer',
    );
  }
}

extension UserProfileResponseMapper on UserProfileResponse {
  /// Convert UserProfileResponse to UserProfile domain entity
  UserProfile toUserProfile() {
    return UserProfile(
      uid: uid,
      name: name,
      email: email,
      avatarUrl: avatarUrl,
      role: role,
    );
  }
}

extension UserProfileMapper on UserProfile {
  /// Convert UserProfile domain entity to UserProfileResponse
  UserProfileResponse toUserProfileResponse() {
    return UserProfileResponse(
      uid: uid ?? '',
      name: name,
      email: email,
      avatarUrl: avatarUrl,
      role: role,
    );
  }
}
