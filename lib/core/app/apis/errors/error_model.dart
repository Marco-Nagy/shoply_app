import 'package:json_annotation/json_annotation.dart';

part 'error_model.g.dart';

@JsonSerializable()
class ErrorModel {
  ErrorModel(this.errors, this.data);

  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);
  @JsonKey(name: "errors")
  List<ErrorsList?>? errors;
  dynamic data;
}

@JsonSerializable()
class ErrorsList {
  ErrorsList(this.message, this.locations, this.path, this.extensions);

  factory ErrorsList.fromJson(Map<String, dynamic> json) =>
      _$ErrorsListFromJson(json);
  String? message;
  List<ErrorModelErrorsLocations?>? locations;
  List<String?>? path;

  ErrorModelErrorsExtensions? extensions;
}

@JsonSerializable()
class ErrorModelErrorsLocations {
  ErrorModelErrorsLocations(this.line, this.column);

  factory ErrorModelErrorsLocations.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelErrorsLocationsFromJson(json);
  int? line;
  int? column;
}

@JsonSerializable()
class ErrorModelErrorsExtensions {
  ErrorModelErrorsExtensions(this.code, this.originalError);

  factory ErrorModelErrorsExtensions.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelErrorsExtensionsFromJson(json);
  String? code;
  @JsonKey(name: 'originalError')
  ApiErrorModel? originalError;
}

@JsonSerializable()
class ApiErrorModel {
  ApiErrorModel({this.message, this.code});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);
  String? message;
  @JsonKey(name: "statusCode")
  int? code;
}
