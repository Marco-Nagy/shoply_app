// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCategoryResponse _$UpdateCategoryResponseFromJson(
        Map<String, dynamic> json) =>
    UpdateCategoryResponse(
      json['data'] == null
          ? null
          : UpdateCategoryResponseData.fromJson(
              json['data'] as Map<String, dynamic>),
      (json['errors'] as List<dynamic>?)
          ?.map((e) => ErrorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpdateCategoryResponseToJson(
        UpdateCategoryResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'errors': instance.errors,
    };

UpdateCategoryResponseData _$UpdateCategoryResponseDataFromJson(
        Map<String, dynamic> json) =>
    UpdateCategoryResponseData(
      json['updateCategory'] == null
          ? null
          : UpdateCategory.fromJson(
              json['updateCategory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateCategoryResponseDataToJson(
        UpdateCategoryResponseData instance) =>
    <String, dynamic>{
      'updateCategory': instance.updateCategory,
    };

UpdateCategory _$UpdateCategoryFromJson(Map<String, dynamic> json) =>
    UpdateCategory(
      json['id'] as String?,
    );

Map<String, dynamic> _$UpdateCategoryToJson(UpdateCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
