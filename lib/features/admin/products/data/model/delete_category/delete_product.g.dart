// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteProductResponse _$DeleteProductResponseFromJson(
        Map<String, dynamic> json) =>
    DeleteProductResponse(
      json['data'] == null
          ? null
          : DeleteProduct.fromJson(json['data'] as Map<String, dynamic>),
      (json['errors'] as List<dynamic>?)
          ?.map((e) => ErrorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DeleteProductResponseToJson(
        DeleteProductResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'errors': instance.errors,
    };

DeleteProduct _$DeleteProductFromJson(Map<String, dynamic> json) =>
    DeleteProduct(
      json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$DeleteProductToJson(DeleteProduct instance) =>
    <String, dynamic>{
      'isDeleted': instance.isDeleted,
    };
