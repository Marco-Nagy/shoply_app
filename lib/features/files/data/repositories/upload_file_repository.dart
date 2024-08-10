
import 'package:image_picker/image_picker.dart';
import 'package:shoply/core/app/Apis/api_result.dart';
import 'package:shoply/core/app/apis/errors/error_handler.dart';
import 'package:shoply/features/files/data/data_sources/upload_file_data_source.dart';
import 'package:shoply/features/files/data/models/upload_model.dart';

class FileRepository {
  FileRepository(this._fileDataSource);

  final FileDataSource _fileDataSource;

  Future<ApiResult<UploadFileResponse>> uploadFile(XFile file) async {
    try {
      final response = await _fileDataSource.uploadFile(file);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ServerFailure(e.toString()));
    }
  }
}
