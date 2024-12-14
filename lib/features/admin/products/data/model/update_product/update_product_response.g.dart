// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProductResponse _$UpdateProductResponseFromJson(
        Map<String, dynamic> json) =>
    UpdateProductResponse(
      json['data'] == null
          ? null
          : UpdateProductResponseData.fromJson(
              json['data'] as Map<String, dynamic>),
      (json['errors'] as List<dynamic>?)
          ?.map((e) => ErrorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpdateProductResponseToJson(
        UpdateProductResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'errors': instance.errors,
    };

UpdateProductResponseData _$UpdateProductResponseDataFromJson(
        Map<String, dynamic> json) =>
    UpdateProductResponseData(
      json['updateProduct'] == null
          ? null
          : UpdateProduct.fromJson(
              json['updateProduct'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateProductResponseDataToJson(
        UpdateProductResponseData instance) =>
    <String, dynamic>{
      'updateProduct': instance.updateProduct,
    };

UpdateProduct _$UpdateProductFromJson(Map<String, dynamic> json) =>
    UpdateProduct(
      json['id'] as String?,
    );

Map<String, dynamic> _$UpdateProductToJson(UpdateProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
