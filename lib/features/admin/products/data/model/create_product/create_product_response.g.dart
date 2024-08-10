// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateProductResponse _$CreateProductResponseFromJson(
        Map<String, dynamic> json) =>
    CreateProductResponse(
      json['data'] == null
          ? null
          : CreateProductResponseData.fromJson(
              json['data'] as Map<String, dynamic>),
      (json['errors'] as List<dynamic>?)
          ?.map((e) => ErrorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateProductResponseToJson(
        CreateProductResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'errors': instance.errors,
    };

CreateProductResponseData _$CreateProductResponseDataFromJson(
        Map<String, dynamic> json) =>
    CreateProductResponseData(
      json['addProduct'] == null
          ? null
          : AddProduct.fromJson(json['addProduct'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateProductResponseDataToJson(
        CreateProductResponseData instance) =>
    <String, dynamic>{
      'addProduct': instance.addProduct,
    };

AddProduct _$AddProductFromJson(Map<String, dynamic> json) => AddProduct(
      json['id'] as String?,
    );

Map<String, dynamic> _$AddProductToJson(AddProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
