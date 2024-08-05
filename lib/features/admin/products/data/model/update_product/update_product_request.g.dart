// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_product_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProductRequest _$UpdateProductRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateProductRequest(
      json['id'] as String?,
      json['title'] as String?,
      (json['price'] as num?)?.toInt(),
      json['description'] as String?,
      (json['categoryId'] as num?)?.toInt(),
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$UpdateProductRequestToJson(
        UpdateProductRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'categoryId': instance.categoryId,
      'images': instance.images,
    };
