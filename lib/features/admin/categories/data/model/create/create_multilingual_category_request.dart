import 'package:json_annotation/json_annotation.dart';

part 'create_multilingual_category_request.g.dart';

@JsonSerializable()
class CreateMultilingualCategoryRequest {
  final Map<String, String>? name; // { 'ar': '...', 'en': '...', 'fr': '...' }
  final String? image;

  CreateMultilingualCategoryRequest(this.name, this.image);

  Map<String, dynamic> toJson() =>
      _$CreateMultilingualCategoryRequestToJson(this);
}
