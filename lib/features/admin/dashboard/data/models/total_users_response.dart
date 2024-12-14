import 'package:json_annotation/json_annotation.dart';
import 'package:shoply/core/app/apis/errors/error_model.dart';

part 'total_users_response.g.dart';

@JsonSerializable()
class TotalUsersResponse {
  @JsonKey(name: 'data')
  final TotalUsersResponseData? data;
  @JsonKey(name: 'errors')
  final List<ErrorModel>? errors;


  TotalUsersResponse(this.data,this.errors);

  factory TotalUsersResponse.fromJson(Map<String, dynamic> json) =>
      _$TotalUsersResponseFromJson(json);

}

@JsonSerializable()
class TotalUsersResponseData {
  final List<TotalUsersResponseDataUsers?>? users;

  TotalUsersResponseData(this.users,);

  factory TotalUsersResponseData.fromJson(Map<String, dynamic> json) =>
      _$TotalUsersResponseDataFromJson(json);

}

@JsonSerializable()
class TotalUsersResponseDataUsers {
  final String? name;

  TotalUsersResponseDataUsers(this.name);

  factory TotalUsersResponseDataUsers.fromJson(Map<String, dynamic> json) =>
      _$TotalUsersResponseDataUsersFromJson(json);

}
