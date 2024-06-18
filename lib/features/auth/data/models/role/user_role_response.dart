import 'package:json_annotation/json_annotation.dart';

part 'user_role_response.g.dart';

@JsonSerializable()
class UserRoleResponse {

  UserRoleResponse(this.id, this.email, this.password, this.name, this.role,
      this.avatar, this.creationAt, this.updatedAt,);

  factory UserRoleResponse.fromJson(Map<String, dynamic> json) =>
      _$UserRoleResponseFromJson(json);
  int? id;
  String? email;
  String? password;
  String? name;
  String? role;
  String? avatar;
  String? creationAt;
  String? updatedAt;

}
