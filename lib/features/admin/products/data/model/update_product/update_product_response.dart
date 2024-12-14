import 'package:json_annotation/json_annotation.dart';
import 'package:shoply/core/app/apis/errors/error_model.dart';

part 'update_product_response.g.dart';

@JsonSerializable()
class UpdateProductResponse {
  @JsonKey(name: 'data')
  final UpdateProductResponseData? data;
  @JsonKey(name: 'errors')
  final List<ErrorModel>? errors;
  UpdateProductResponse(this.data, this.errors);


  factory UpdateProductResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductResponseFromJson(json);

}

@JsonSerializable()
class UpdateProductResponseData {
  final UpdateProduct? updateProduct;

  UpdateProductResponseData(this.updateProduct);

  factory UpdateProductResponseData.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductResponseDataFromJson(json);

}

@JsonSerializable()
class UpdateProduct {
  final String? id;

  UpdateProduct(this.id);

  factory UpdateProduct.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateProductFromJson(json);


}
