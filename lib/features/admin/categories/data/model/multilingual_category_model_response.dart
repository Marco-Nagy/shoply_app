import 'package:json_annotation/json_annotation.dart';
import 'package:shoply/features/admin/categories/domain/entities/multilingual_category_entity.dart';

part 'multilingual_category_model_response.g.dart';

@JsonSerializable()
class MultilingualCategoryModelResponse {
  final String? id;
  final Map<String, String>? name;
  final String? image;

  MultilingualCategoryModelResponse({
    this.id,
    this.name,
    this.image,
  });

  factory MultilingualCategoryModelResponse.fromJson(
          Map<String, dynamic> json) =>
      _$MultilingualCategoryModelResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MultilingualCategoryModelResponseToJson(this);

  /// Convert to Entity
  MultilingualCategoryEntity toEntity() {
    return MultilingualCategoryEntity(
      id: id ?? '',
      name: name ?? {},
      image: image ?? '',
    );
  }

  /// Create from Entity
  factory MultilingualCategoryModelResponse.fromEntity(
      MultilingualCategoryEntity entity) {
    return MultilingualCategoryModelResponse(
      id: entity.id,
      name: entity.name,
      image: entity.image,
    );
  }
}
