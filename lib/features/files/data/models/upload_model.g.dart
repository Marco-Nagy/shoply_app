// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UploadFileResponse _$UploadFileResponseFromJson(Map<String, dynamic> json) =>
    UploadFileResponse(
      json['originalname'] as String?,
      json['location'] as String?,
    );

Map<String, dynamic> _$UploadFileResponseToJson(UploadFileResponse instance) =>
    <String, dynamic>{
      'originalname': instance.filename,
      'location': instance.location,
    };
