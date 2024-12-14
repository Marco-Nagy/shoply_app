import 'package:json_annotation/json_annotation.dart';
import 'package:shoply/core/app/apis/errors/error_model.dart';

part 'update_category_response.g.dart';

@JsonSerializable()
class UpdateCategoryResponse {
  @JsonKey(name: 'data')
  final UpdateCategoryResponseData? data;
  @JsonKey(name: 'errors')
  final List<ErrorModel>? errors;
  UpdateCategoryResponse(this.data, this.errors);

  factory UpdateCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateCategoryResponseFromJson(json);

}

@JsonSerializable()
class UpdateCategoryResponseData {
  final UpdateCategory? updateCategory;

  UpdateCategoryResponseData(this.updateCategory);

  factory UpdateCategoryResponseData.fromJson(Map<String, dynamic> json) =>
      _$UpdateCategoryResponseDataFromJson(json);

}

@JsonSerializable()
class UpdateCategory {
  final String? id;


  UpdateCategory(this.id,);

  factory UpdateCategory.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateCategoryFromJson(json);


}
