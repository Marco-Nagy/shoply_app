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


TotalProductsResponseDataProducts _$TotalProductsResponseDataProductsFromJson(
        Map<String, dynamic> json) =>
    TotalProductsResponseDataProducts(
      json['title'] as String?,
    );

