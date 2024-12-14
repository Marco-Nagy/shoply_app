import 'package:json_annotation/json_annotation.dart';
import 'package:shoply/core/app/apis/errors/error_model.dart';

part 'total_categories_response.g.dart';

@JsonSerializable()
class TotalCategoriesResponse {
  @JsonKey(name: 'data')
  final TotalCategoriesResponseData? data;
  @JsonKey(name: 'errors')
  final List<ErrorModel>? errors;

  TotalCategoriesResponse(this.data, this.errors);

  factory TotalCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$TotalCategoriesResponseFromJson(json);

}

@JsonSerializable()
class TotalCategoriesResponseData {
  final List<TotalCategoriesResponseDataCategories?>? categories;

  TotalCategoriesResponseData(this.categories);

  factory TotalCategoriesResponseData.fromJson(Map<String, dynamic> json) =>
      _$TotalCategoriesResponseDataFromJson(json);

}

@JsonSerializable()
class TotalCategoriesResponseDataCategories {
  final String? name;

  TotalCategoriesResponseDataCategories(this.name);

  factory TotalCategoriesResponseDataCategories.fromJson(
          Map<String, dynamic> json) =>
      _$TotalCategoriesResponseDataCategoriesFromJson(json);


}

