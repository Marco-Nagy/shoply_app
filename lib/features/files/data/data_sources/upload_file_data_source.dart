import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shoply/core/app/Apis/api_service.dart';
import 'package:shoply/features/files/data/models/upload_model.dart';

class FileDataSource {
  FileDataSource(this._apiService);

  final ApiService _apiService;

  Future<UploadFileResponse> uploadFile(XFile file) async {
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
