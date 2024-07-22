import 'package:json_annotation/json_annotation.dart';

part 'update_category_request.g.dart';

@JsonSerializable()
class UpdateCategoryRequest {
  final String? id;
  final String? name;
  final String? image;

  UpdateCategoryRequest(this.id, this.name, this.image);

  Map<String, dynamic> toJson() => _$UpdateCategoryRequestToJson(this);
}
