import 'package:json_annotation/json_annotation.dart';

part 'user_role_response.g.dart';

@JsonSerializable()
class UserRoleResponse {
  UserRoleResponse(this.data);

  factory UserRoleResponse.fromJson(Map<String, dynamic> json) =>
      _$UserRoleResponseFromJson(json);
  UserRoleData? data;
}

@JsonSerializable()
class UserRoleData {
  UserRoleData(this.user);

  factory UserRoleData.fromJson(Map<String, dynamic> json) =>
      _$UserRoleDataFromJson(json);
  UserRole? user;
}

@JsonSerializable()
class UserRole {
  UserRole(this.role);

  factory UserRole.fromJson(Map<String, dynamic> json) =>
      _$UserRoleFromJson(json);
  String? role;
}
