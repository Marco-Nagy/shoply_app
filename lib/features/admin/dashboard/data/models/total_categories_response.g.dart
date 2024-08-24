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


TotalCategoriesResponseDataCategories
    _$TotalCategoriesResponseDataCategoriesFromJson(
            Map<String, dynamic> json) =>
        TotalCategoriesResponseDataCategories(
          json['name'] as String?,
        );

