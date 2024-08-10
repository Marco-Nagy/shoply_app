// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'total_products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TotalProductsResponse _$TotalProductsResponseFromJson(
        Map<String, dynamic> json) =>
    TotalProductsResponse(
      json['data'] == null
          ? null
          : TotalProductsResponseData.fromJson(
              json['data'] as Map<String, dynamic>),
      (json['errors'] as List<dynamic>?)
          ?.map((e) => ErrorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TotalProductsResponseToJson(
        TotalProductsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'errors': instance.error,
    };

TotalProductsResponseData _$TotalProductsResponseDataFromJson(
        Map<String, dynamic> json) =>
    TotalProductsResponseData(
      (json['products'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : TotalProductsResponseDataProducts.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TotalProductsResponseDataToJson(
        TotalProductsResponseData instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

TotalProductsResponseDataProducts _$TotalProductsResponseDataProductsFromJson(
        Map<String, dynamic> json) =>
    TotalProductsResponseDataProducts(
      json['title'] as String?,
    );

Map<String, dynamic> _$TotalProductsResponseDataProductsToJson(
        TotalProductsResponseDataProducts instance) =>
    <String, dynamic>{
      'title': instance.title,
    };
