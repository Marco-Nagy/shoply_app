import 'package:json_annotation/json_annotation.dart';

part 'signup_response.g.dart';

@JsonSerializable()
class SignupResponse {

  SignupResponse(this.data);

  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);
  SignupResponseData? data;

}

@JsonSerializable()
class SignupResponseData {

  SignupResponseData(this.addUser);

  factory SignupResponseData.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseDataFromJson(json);
  AddUserData? addUser;

}

@JsonSerializable()
class AddUserData {

  AddUserData(this.id, this.email, this.role, this.password);

  factory AddUserData.fromJson(Map<String, dynamic> json) =>
      _$AddUserDataFromJson(json);
  String? id;
  String? email;
  String? role;
  String? password;

}
