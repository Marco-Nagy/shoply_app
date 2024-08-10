import 'package:json_annotation/json_annotation.dart';
import 'package:shoply/core/app/apis/errors/error_model.dart';

part 'delete_response.g.dart';

@JsonSerializable()
class DeleteCategoryResponse {
  @JsonKey(name: 'data')
  final DeleteResponseData? data;
  @JsonKey(name: 'errors')
  final List<ErrorModel>? errors;


  DeleteCategoryResponse(this.data, this.errors);

  factory DeleteCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteCategoryResponseFromJson(json);

}

@JsonSerializable()
class DeleteResponseData {
  final bool? deleteCategory;

  DeleteResponseData(this.deleteCategory);

  factory DeleteResponseData.fromJson(Map<String, dynamic> json) =>
      _$DeleteResponseDataFromJson(json);

}
