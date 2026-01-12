import 'package:json_annotation/json_annotation.dart';

part 'auth_user_response.g.dart';

@JsonSerializable()
class AuthUserResponse {
  final String uid;
  final String? name;
  final String? email;
  final String? avatarUrl;
  final String? role;


  const AuthUserResponse({
    required this.uid,
    this.name,
    this.email,
    this.avatarUrl,
    this.role,
  });

  factory AuthUserResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthUserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthUserResponseToJson(this);
}
