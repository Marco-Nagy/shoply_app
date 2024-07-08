import 'package:json_annotation/json_annotation.dart';
import 'package:shoply/core/app/apis/errors/error_model.dart';

part 'total_products_response.g.dart';

@JsonSerializable()
class TotalProductsResponse {
  final TotalProductsResponseData? data;
  @JsonKey( name: 'errors')
  final List<ErrorModel>? error;

  TotalProductsResponse(this.data, this.error);

  factory TotalProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$TotalProductsResponseFromJson(json);

}

@JsonSerializable()
class TotalProductsResponseData {
  final List<TotalProductsResponseDataProducts?>? products;

  TotalProductsResponseData(this.products);

  factory TotalProductsResponseData.fromJson(Map<String, dynamic> json) =>
      _$TotalProductsResponseDataFromJson(json);

}

@JsonSerializable()
class TotalProductsResponseDataProducts {
  final String? title;

  TotalProductsResponseDataProducts(this.title);

  factory TotalProductsResponseDataProducts.fromJson(
          Map<String, dynamic> json) =>
      _$TotalProductsResponseDataProductsFromJson(json);


}
