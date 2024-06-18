// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_role_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRoleResponse _$UserRoleResponseFromJson(Map<String, dynamic> json) =>
    UserRoleResponse(
      (json['id'] as num?)?.toInt(),
      json['email'] as String?,
      json['password'] as String?,
      json['name'] as String?,
      json['role'] as String?,
      json['avatar'] as String?,
      json['creationAt'] as String?,
      json['updatedAt'] as String?,
    );

Map<String, dynamic> _$UserRoleResponseToJson(UserRoleResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
      'role': instance.role,
      'avatar': instance.avatar,
      'creationAt': instance.creationAt,
      'updatedAt': instance.updatedAt,
    };
