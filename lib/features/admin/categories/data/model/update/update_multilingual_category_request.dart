import 'package:json_annotation/json_annotation.dart';

part 'update_multilingual_category_request.g.dart';

@JsonSerializable()
class UpdateMultilingualCategoryRequest {
  final String? id;
  final Map<String, String>? name; // { 'ar': '...', 'en': '...', 'fr': '...' }
  final String? image;

  UpdateMultilingualCategoryRequest(this.id, this.name, this.image);

  Map<String, dynamic> toJson() =>
      _$UpdateMultilingualCategoryRequestToJson(this);
}
