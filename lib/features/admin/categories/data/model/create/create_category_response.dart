import 'package:json_annotation/json_annotation.dart';
import 'package:shoply/core/app/apis/errors/error_model.dart';

part 'create_category_response.g.dart';

@JsonSerializable()
class CreateCategoryResponse {
  @JsonKey(name: 'data')
  final CreateCategoryResponseData? data;
  @JsonKey(name: 'errors')
  final List<ErrorModel>? errors;

  CreateCategoryResponse(this.data, this.errors);

  factory CreateCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateCategoryResponseFromJson(json);

}

@JsonSerializable()
class CreateCategoryResponseData {
  final AddCategory? addCategory;

  CreateCategoryResponseData(this.addCategory);

  factory CreateCategoryResponseData.fromJson(Map<String, dynamic> json) =>
      _$CreateCategoryResponseDataFromJson(json);


}

@JsonSerializable()
class AddCategory {
  final String? id;
  final String? name;
  final String? image;

  AddCategory(this.id, this.name, this.image);

  factory AddCategory.fromJson(
          Map<String, dynamic> json) =>
      _$AddCategoryFromJson(json);


}
