// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupResponse _$SignupResponseFromJson(Map<String, dynamic> json) =>
    SignupResponse(
      json['data'] == null
          ? null
          : SignupResponseData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignupResponseToJson(SignupResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

SignupResponseData _$SignupResponseDataFromJson(Map<String, dynamic> json) =>
    SignupResponseData(
      json['addUser'] == null
          ? null
          : AddUserData.fromJson(json['addUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignupResponseDataToJson(SignupResponseData instance) =>
    <String, dynamic>{
      'addUser': instance.addUser,
    };

AddUserData _$AddUserDataFromJson(Map<String, dynamic> json) => AddUserData(
      json['id'] as String?,
      json['email'] as String?,
      json['role'] as String?,
      json['password'] as String?,
    );

Map<String, dynamic> _$AddUserDataToJson(AddUserData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'role': instance.role,
      'password': instance.password,
    };
