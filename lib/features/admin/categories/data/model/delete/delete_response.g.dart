// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteCategoryResponse _$DeleteCategoryResponseFromJson(
        Map<String, dynamic> json) =>
    DeleteCategoryResponse(
      json['data'] == null
          ? null
          : DeleteResponseData.fromJson(json['data'] as Map<String, dynamic>),
      (json['errors'] as List<dynamic>?)
          ?.map((e) => ErrorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DeleteCategoryResponseToJson(
        DeleteCategoryResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'errors': instance.errors,
    };

DeleteResponseData _$DeleteResponseDataFromJson(Map<String, dynamic> json) =>
    DeleteResponseData(
      json['deleteCategory'] as bool?,
    );

Map<String, dynamic> _$DeleteResponseDataToJson(DeleteResponseData instance) =>
    <String, dynamic>{
      'deleteCategory': instance.deleteCategory,
    };
