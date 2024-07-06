import 'package:json_annotation/json_annotation.dart';
import 'package:shoply/core/app/apis/errors/error_model.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {

  LoginResponse(this.data,this.errorResponse);

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
  LoginResponseData? data;
  @JsonKey(name: 'errors')
  List<ErrorModel>? errorResponse;

}

@JsonSerializable()
class LoginResponseData {

  LoginResponseData(this.login);

  factory LoginResponseData.fromJson(Map<String, dynamic> json) => _$LoginResponseDataFromJson(json);
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
