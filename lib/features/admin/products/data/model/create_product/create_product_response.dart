import 'package:json_annotation/json_annotation.dart';
import 'package:shoply/core/app/apis/errors/error_model.dart';

part 'create_product_response.g.dart';

@JsonSerializable()
class CreateProductResponse {
  @JsonKey(name: 'data')
  final CreateProductResponseData? data;
  @JsonKey(name: 'errors')
  final List<ErrorModel>? errors;

  CreateProductResponse(this.data, this.errors);

  factory CreateProductResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateProductResponseFromJson(json);

}

@JsonSerializable()
class CreateProductResponseData {
  final AddProduct? addProduct;

  CreateProductResponseData(this.addProduct);

  factory CreateProductResponseData.fromJson(Map<String, dynamic> json) =>
      _$CreateProductResponseDataFromJson(json);

}

@JsonSerializable()
class AddProduct {
  final String? id;

  AddProduct(this.id);

  factory AddProduct.fromJson(
          Map<String, dynamic> json) =>
      _$AddProductFromJson(json);

}
