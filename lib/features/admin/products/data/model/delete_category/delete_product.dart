import 'package:json_annotation/json_annotation.dart';
import 'package:shoply/core/app/apis/errors/error_model.dart';

part 'delete_product.g.dart';

@JsonSerializable()
class DeleteProductResponse {
  @JsonKey(name:'data')
  final DeleteProduct? data;
  @JsonKey(name: 'errors')
  final List<ErrorModel>? errors;
  DeleteProductResponse(this.data, this.errors);

  factory DeleteProductResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteProductResponseFromJson(json);

}

@JsonSerializable()
class DeleteProduct {
  final bool? isDeleted;

  DeleteProduct(this.isDeleted);

  factory DeleteProduct.fromJson(Map<String, dynamic> json) =>
      _$DeleteProductFromJson(json);

}
