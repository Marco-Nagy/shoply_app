import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:shoply/core/app/Apis/api_service.dart';
import 'package:shoply/features/files/data/models/upload_model.dart';

class FileDataSource {
  FileDataSource(this._apiService);

  final ApiService _apiService;

  Future<UploadFileResponse> uploadFile(File file) async {
    final form = FormData();
    form.files.add(
      MapEntry(
        'file',
        await MultipartFile.fromFile(
          file.path,
          filename: file.path.split('/').last,
        ),
      ),
    );
    return  _apiService.uploadFile(form);
  }
}
