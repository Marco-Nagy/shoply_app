// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_product_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProductRequest _$UpdateProductRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateProductRequest(
      id: json['id'] as String?,
      title: json['title'] as String?,
      price: (json['price'] as num?)?.toInt(),
      description: json['description'] as String?,
      categoryId: (json['categoryId'] as num?)?.toDouble(),
      images:
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
