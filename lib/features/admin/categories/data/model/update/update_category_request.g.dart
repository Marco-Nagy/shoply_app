// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_category_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCategoryRequest _$UpdateCategoryRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateCategoryRequest(
      json['id'] as String?,
      json['name'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$UpdateCategoryRequestToJson(
        UpdateCategoryRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };
