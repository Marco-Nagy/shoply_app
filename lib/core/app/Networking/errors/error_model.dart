import 'package:json_annotation/json_annotation.dart';
part 'error_model.g.dart';

@JsonSerializable()
class ErrorModel {
  final String message;
  final List<ErrorsLocations> locations;
  final List<String> path;
  final ErrorsExtensions extensions;

  ErrorModel(this.message, this.locations, this.path, this.extensions);

  factory ErrorModel.fromJson(Map<String, dynamic> json) => _$ErrorModelFromJson(json);

}

@JsonSerializable()
class ErrorsLocations {
  final int line;
  final int column;

  ErrorsLocations(this.line, this.column);

  factory ErrorsLocations.fromJson(Map<String, dynamic> json) =>
      _$ErrorsLocationsFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorsLocationsToJson(this);
}

@JsonSerializable()
class ErrorsExtensions {
  final String code;
  final ErrorsExtensionsOriginalError originalError;

  ErrorsExtensions(this.code, this.originalError);

  factory ErrorsExtensions.fromJson(Map<String, dynamic> json) =>
      _$ErrorsExtensionsFromJson(json);

}

@JsonSerializable()
class ErrorsExtensionsOriginalError {
  final String message;
  final int statusCode;

  ErrorsExtensionsOriginalError(this.message, this.statusCode);

  factory ErrorsExtensionsOriginalError.fromJson(Map<String, dynamic> json) =>
      _$ErrorsExtensionsOriginalErrorFromJson(json);

}
