// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_category_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCategoryRequest _$CreateCategoryRequestFromJson(
        Map<String, dynamic> json) =>
    CreateCategoryRequest(
      json['name'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$CreateCategoryRequestToJson(
        CreateCategoryRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
    };
