// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllCategoriesResponse _$GetAllCategoriesResponseFromJson(
        Map<String, dynamic> json) =>
    GetAllCategoriesResponse(
      json['data'] == null
          ? null
          : GetAllCategoriesList.fromJson(json['data'] as Map<String, dynamic>),
      (json['errors'] as List<dynamic>?)
          ?.map((e) => ErrorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAllCategoriesResponseToJson(
        GetAllCategoriesResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'errors': instance.errors,
    };

GetAllCategoriesList _$GetAllCategoriesListFromJson(
        Map<String, dynamic> json) =>
    GetAllCategoriesList(
      (json['categories'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Categories.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAllCategoriesListToJson(
        GetAllCategoriesList instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };

Categories _$CategoriesFromJson(Map<String, dynamic> json) => Categories(
      json['id'] as String?,
      json['name'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$CategoriesToJson(Categories instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };
