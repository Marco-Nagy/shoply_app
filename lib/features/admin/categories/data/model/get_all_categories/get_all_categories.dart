import 'package:json_annotation/json_annotation.dart';
import 'package:shoply/core/app/apis/errors/error_model.dart';
part 'get_all_categories.g.dart';

@JsonSerializable()
class GetAllCategoriesResponse {
  @JsonKey(name: 'data')
  final GetAllCategoriesList? data;
  @JsonKey(name: 'errors')
  final List<ErrorModel>? errors;
  GetAllCategoriesResponse(this.data, this.errors);

  factory GetAllCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllCategoriesResponseFromJson(json);

}

@JsonSerializable()
class GetAllCategoriesList {
  final List<Categories?>? categories;

  GetAllCategoriesList(this.categories);

  factory GetAllCategoriesList.fromJson(Map<String, dynamic> json) =>
      _$GetAllCategoriesListFromJson(json);

}

@JsonSerializable()
class Categories {
  final String? id;
  final String? name;
  final String? image;

  Categories(this.id, this.name, this.image);

  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);

}
