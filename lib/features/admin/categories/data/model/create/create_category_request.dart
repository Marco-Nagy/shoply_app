import 'package:json_annotation/json_annotation.dart';

part 'create_category_request.g.dart';

@JsonSerializable()
class CreateCategoryRequest {
  final String? name;
  final String? image;

  CreateCategoryRequest(this.name, this.image);


  Map<String, dynamic> toJson() => _$CreateCategoryRequestToJson(this);
}
