// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) => ErrorModel(
      (json['errors'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : ErrorsList.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['data'],
    );

Map<String, dynamic> _$ErrorModelToJson(ErrorModel instance) =>
    <String, dynamic>{
      'errors': instance.errors,
      'data': instance.data,
    };

ErrorsList _$ErrorsListFromJson(Map<String, dynamic> json) => ErrorsList(
      json['message'] as String?,
      (json['locations'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : ErrorModelErrorsLocations.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['path'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      json['extensions'] == null
          ? null
          : ErrorModelErrorsExtensions.fromJson(
              json['extensions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ErrorsListToJson(ErrorsList instance) =>
    <String, dynamic>{
      'message': instance.message,
      'locations': instance.locations,
      'path': instance.path,
      'extensions': instance.extensions,
    };

ErrorModelErrorsLocations _$ErrorModelErrorsLocationsFromJson(
        Map<String, dynamic> json) =>
    ErrorModelErrorsLocations(
      (json['line'] as num?)?.toInt(),
      (json['column'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ErrorModelErrorsLocationsToJson(
        ErrorModelErrorsLocations instance) =>
    <String, dynamic>{
      'line': instance.line,
      'column': instance.column,
    };

ErrorModelErrorsExtensions _$ErrorModelErrorsExtensionsFromJson(
        Map<String, dynamic> json) =>
    ErrorModelErrorsExtensions(
      json['code'] as String?,
      json['originalError'] == null
          ? null
          : ApiErrorModel.fromJson(
              json['originalError'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ErrorModelErrorsExtensionsToJson(
        ErrorModelErrorsExtensions instance) =>
    <String, dynamic>{
      'code': instance.code,
      'originalError': instance.originalError,
    };

ApiErrorModel _$ApiErrorModelFromJson(Map<String, dynamic> json) =>
    ApiErrorModel(
      message: json['message'] as String?,
      code: (json['statusCode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ApiErrorModelToJson(ApiErrorModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.code,
    };
