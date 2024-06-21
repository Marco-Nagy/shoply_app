import 'package:json_annotation/json_annotation.dart';

part 'signup_request.g.dart';

@JsonSerializable()
class SignupRequest {

  SignupRequest({this.name, this.email, this.password, this.avatar, });


  String? name;
  String? email;
  String? password;
  String? avatar;


  Map<String, dynamic> toJson() => _$SignupRequestToJson(this);
}
