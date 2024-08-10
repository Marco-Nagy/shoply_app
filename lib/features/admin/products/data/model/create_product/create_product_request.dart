import 'package:json_annotation/json_annotation.dart';

part 'create_product_request.g.dart';

@JsonSerializable()
class CreateProductRequest {
  final String? title;
  final double? price;
  final String? description;
  final String? categoryId;
  final List<String>? images;

  CreateProductRequest(
      {this.title, this.price, this.description, this.categoryId, this.images});


  Map<String, dynamic> toJson() => _$CreateProductRequestToJson(this);
}
