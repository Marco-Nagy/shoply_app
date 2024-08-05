import 'package:json_annotation/json_annotation.dart';
import 'package:shoply/core/app/apis/errors/error_model.dart';

part 'get_all_products.g.dart';

@JsonSerializable()
class GetAllProductsResponse {
  @JsonKey(name: 'data')
  final GetProductsList? data;
  @JsonKey(name: 'errors')
  final List<ErrorModel>? errors;

  GetAllProductsResponse(this.data, this.errors);

  factory GetAllProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllProductsResponseFromJson(json);

}

@JsonSerializable()
class GetProductsList {
  @JsonKey(name: 'products')
  final List<Product>? productsList;

  GetProductsList(this.productsList);

  factory GetProductsList.fromJson(Map<String, dynamic> json) =>
      _$GetProductsListFromJson(json);
}

@JsonSerializable()
class Product {
  final String? id;
  final String? title;
  final int? price;
  final String? description;
  @JsonKey(name: 'images')
  final List<String>? images;
  @JsonKey(name: 'category')
  final CategoryProductModel? category;

  Product(this.id, this.title, this.price, this.description,
      this.images, this.category);

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@JsonSerializable()
class CategoryProductModel {
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;

  CategoryProductModel(this.id, this.name);

  factory CategoryProductModel.fromJson(
          Map<String, dynamic> json) =>
      _$CategoryProductModelFromJson(json);


}
