import 'package:json_annotation/json_annotation.dart';

part 'signup_request.g.dart';

@JsonSerializable()
class SignupRequest {
  SignupRequest({
    this.name,
    this.email,
    this.password,
    this.avatar,
    this.role,
  });

  String? name;
  String? email;
  String? password;
  String? avatar;
  String? role;

  Map<String, dynamic> toJson() => _$SignupRequestToJson(this);
}
