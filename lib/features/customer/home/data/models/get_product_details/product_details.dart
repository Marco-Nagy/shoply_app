import 'package:json_annotation/json_annotation.dart';
import 'package:shoply/core/app/apis/errors/error_model.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';

part 'product_details.g.dart';

@JsonSerializable()
class ProductDetailsResponse {
  @JsonKey(name: 'data')
  final ProductDetailsData? data;
  @JsonKey(name: 'errors')
  final List<ErrorModel>? errors;

  const ProductDetailsResponse(this.data, this.errors);

  factory ProductDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsResponseFromJson(json);

}

@JsonSerializable()
class ProductDetailsData {
  @JsonKey(name: 'product')
  final ProductDetails? product;

  ProductDetailsData(this.product);

  factory ProductDetailsData.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsDataFromJson(json);

}

@JsonSerializable()
class ProductDetails {
  final String? id;
  final String? title;
  final int? price;
  final List<String>? images;
  final String? description;

  ProductDetails(
      this.title, this.price, this.images, this.description, this.id);

  factory ProductDetails.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsFromJson(json);

}
