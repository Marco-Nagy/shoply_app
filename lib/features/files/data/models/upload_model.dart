import 'package:json_annotation/json_annotation.dart';

part 'upload_model.g.dart';

@JsonSerializable()
class UploadFileResponse {
  @JsonKey(name: 'originalname')
  String? filename;
  String? location;

  UploadFileResponse(this.filename, this.location);

  factory UploadFileResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadFileResponseFromJson(json);

}
