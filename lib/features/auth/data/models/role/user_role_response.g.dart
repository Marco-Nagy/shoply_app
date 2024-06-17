// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_role_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRoleResponse _$UserRoleResponseFromJson(Map<String, dynamic> json) =>
    UserRoleResponse(
      json['data'] == null
          ? null
          : UserRoleData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserRoleResponseToJson(UserRoleResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

UserRoleData _$UserRoleDataFromJson(Map<String, dynamic> json) => UserRoleData(
      json['user'] == null
          ? null
          : UserRole.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserRoleDataToJson(UserRoleData instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

UserRole _$UserRoleFromJson(Map<String, dynamic> json) => UserRole(
      json['role'] as String?,
    );

Map<String, dynamic> _$UserRoleToJson(UserRole instance) => <String, dynamic>{
      'role': instance.role,
    };
