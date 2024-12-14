// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_products_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilterProductsRequest _$FilterProductsRequestFromJson(
        Map<String, dynamic> json) =>
    FilterProductsRequest(
      (json['priceMin'] as num?)?.toInt(),
      (json['priceMax'] as num?)?.toInt(),
      json['title'] as String?,
    );

Map<String, dynamic> _$FilterProductsRequestToJson(
        FilterProductsRequest instance) =>
    <String, dynamic>{
      'priceMin': instance.priceMin,
      'priceMax': instance.priceMax,
      'title': instance.title,
    };
