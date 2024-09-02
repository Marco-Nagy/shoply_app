import 'package:shoply/core/Services/shared_preference/shared_pref_keys.dart';
import 'package:shoply/core/Services/shared_preference/shared_preference_helper.dart';
import 'package:shoply/core/app/Apis/api_service.dart';
import 'package:shoply/features/auth/data/models/role/user_role_response.dart';

class ProfileDataSource {
  final ApiService _apiService;

  ProfileDataSource(this._apiService);

  Future<UserRoleResponse> getUserProfile() async {
    final accessToken =
        SharedPrefHelper().getString(key: SharedPrefKeys.accessToken) ?? '';
    return await _apiService.userRole(
      'Bearer ${accessToken ?? 'Null Token'}',
    );
  }
}
