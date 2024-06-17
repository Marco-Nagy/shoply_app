import 'package:json_annotation/json_annotation.dart';

part 'login_request.g.dart';

@JsonSerializable()
class LoginRequest {

  LoginRequest(this.email, this.password);
  String? email;
  String? password;


  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
