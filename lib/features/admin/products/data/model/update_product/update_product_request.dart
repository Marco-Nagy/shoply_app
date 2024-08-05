import 'package:json_annotation/json_annotation.dart';

part 'update_product_request.g.dart';

@JsonSerializable()
class UpdateProductRequest {
  final String? id;
  final String? title;
  final int? price;
  final String? description;
  final int? categoryId;
  final List<String>? images;

  UpdateProductRequest(
    this.id,
    this.title,
    this.price,
    this.description,
    this.categoryId,
    this.images,
  );

  Map<String, dynamic> toJson() => _$UpdateProductRequestToJson(this);
}
