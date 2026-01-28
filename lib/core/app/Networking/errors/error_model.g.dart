// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) => ErrorModel(
      json['message'] as String,
      (json['locations'] as List<dynamic>)
          .map((e) => ErrorsLocations.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['path'] as List<dynamic>).map((e) => e as String).toList(),
      ErrorsExtensions.fromJson(json['extensions'] as Map<String, dynamic>),
    );


ErrorsLocations _$ErrorsLocationsFromJson(Map<String, dynamic> json) =>
    ErrorsLocations(
      (json['line'] as num).toInt(),
      (json['column'] as num).toInt(),
    );

Map<String, dynamic> _$ErrorsLocationsToJson(ErrorsLocations instance) =>
    <String, dynamic>{
      'line': instance.line,
      'column': instance.column,
    };

ErrorsExtensions _$ErrorsExtensionsFromJson(Map<String, dynamic> json) =>
    ErrorsExtensions(
      json['code'] as String,
      ErrorsExtensionsOriginalError.fromJson(
          json['originalError'] as Map<String, dynamic>),
    );


ErrorsExtensionsOriginalError _$ErrorsExtensionsOriginalErrorFromJson(
        Map<String, dynamic> json) =>
    ErrorsExtensionsOriginalError(
      json['message'] as String,
      (json['statusCode'] as num).toInt(),
    );

