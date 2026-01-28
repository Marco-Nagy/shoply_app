// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multilingual_category_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MultilingualCategoryModelResponse _$MultilingualCategoryModelResponseFromJson(
        Map<String, dynamic> json) =>
    MultilingualCategoryModelResponse(
      id: json['id'] as String?,
      name: (json['name'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$MultilingualCategoryModelResponseToJson(
        MultilingualCategoryModelResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };
