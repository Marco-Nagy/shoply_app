// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'total_categories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TotalCategoriesResponse _$TotalCategoriesResponseFromJson(
        Map<String, dynamic> json) =>
    TotalCategoriesResponse(
      json['data'] == null
          ? null
          : TotalCategoriesResponseData.fromJson(
              json['data'] as Map<String, dynamic>),
      (json['errors'] as List<dynamic>?)
          ?.map((e) => ErrorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TotalCategoriesResponseToJson(
        TotalCategoriesResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'errors': instance.errors,
    };

TotalCategoriesResponseData _$TotalCategoriesResponseDataFromJson(
        Map<String, dynamic> json) =>
    TotalCategoriesResponseData(
      (json['categories'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : TotalCategoriesResponseDataCategories.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TotalCategoriesResponseDataToJson(
        TotalCategoriesResponseData instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };

TotalCategoriesResponseDataCategories
    _$TotalCategoriesResponseDataCategoriesFromJson(
            Map<String, dynamic> json) =>
        TotalCategoriesResponseDataCategories(
          json['name'] as String?,
        );

Map<String, dynamic> _$TotalCategoriesResponseDataCategoriesToJson(
        TotalCategoriesResponseDataCategories instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
