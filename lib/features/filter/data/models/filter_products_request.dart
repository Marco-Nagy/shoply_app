import 'package:json_annotation/json_annotation.dart';

part 'filter_products_request.g.dart';

@JsonSerializable()
class FilterProductsRequest {
  final int? priceMin;
  final int? priceMax;
  final String? title;

  FilterProductsRequest(this.priceMin, this.priceMax, this.title);

  Map<String, dynamic> toJson() => _$FilterProductsRequestToJson(this);
}
