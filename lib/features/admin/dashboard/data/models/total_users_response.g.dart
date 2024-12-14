// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'total_users_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TotalUsersResponse _$TotalUsersResponseFromJson(Map<String, dynamic> json) =>
    TotalUsersResponse(
      json['data'] == null
          ? null
          : TotalUsersResponseData.fromJson(
              json['data'] as Map<String, dynamic>),
      (json['errors'] as List<dynamic>?)
          ?.map((e) => ErrorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TotalUsersResponseToJson(TotalUsersResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'errors': instance.errors,
    };

TotalUsersResponseData _$TotalUsersResponseDataFromJson(
        Map<String, dynamic> json) =>
    TotalUsersResponseData(
      (json['users'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : TotalUsersResponseDataUsers.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TotalUsersResponseDataToJson(
        TotalUsersResponseData instance) =>
    <String, dynamic>{
      'users': instance.users,
    };

TotalUsersResponseDataUsers _$TotalUsersResponseDataUsersFromJson(
        Map<String, dynamic> json) =>
    TotalUsersResponseDataUsers(
      json['name'] as String?,
    );

Map<String, dynamic> _$TotalUsersResponseDataUsersToJson(
        TotalUsersResponseDataUsers instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
