import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {

  LoginResponse(this.data);

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
  LoginResponseData? data;

}

@JsonSerializable()
class LoginResponseData {

  LoginResponseData(this.login);

  factory LoginResponseData.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDataFromJson(json);
  LoginResponseDataLogin? login;
}

@JsonSerializable()
class LoginResponseDataLogin {

  LoginResponseDataLogin(this.accessToken, this.refreshToken);

  factory LoginResponseDataLogin.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDataLoginFromJson(json);
  @JsonKey(name: 'access_token')
  String? accessToken;
  @JsonKey(name: 'refresh_token')
  String? refreshToken;

}
