// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCategoryResponse _$CreateCategoryResponseFromJson(
        Map<String, dynamic> json) =>
    CreateCategoryResponse(
      json['data'] == null
          ? null
          : CreateCategoryResponseData.fromJson(
              json['data'] as Map<String, dynamic>),
      (json['errors'] as List<dynamic>?)
          ?.map((e) => ErrorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateCategoryResponseToJson(
        CreateCategoryResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'errors': instance.errors,
    };

CreateCategoryResponseData _$CreateCategoryResponseDataFromJson(
        Map<String, dynamic> json) =>
    CreateCategoryResponseData(
      json['addCategory'] == null
          ? null
          : AddCategory.fromJson(json['addCategory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateCategoryResponseDataToJson(
        CreateCategoryResponseData instance) =>
    <String, dynamic>{
      'addCategory': instance.addCategory,
    };

AddCategory _$AddCategoryFromJson(Map<String, dynamic> json) => AddCategory(
      json['id'] as String?,
      json['name'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$AddCategoryToJson(AddCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };
