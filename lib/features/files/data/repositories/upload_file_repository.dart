import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/core/app/Networking/errors/error_handler.dart';
import 'package:shoply/features/files/data/data_sources/upload_file_data_source.dart';
import 'package:shoply/features/files/data/models/upload_model.dart';

@lazySingleton
class FileRepository {
  FileRepository(this._fileDataSource);

  final FileDataSource _fileDataSource;

  Future<DataResult<UploadFileResponse>> uploadFile(XFile file) async {
    try {
      final response = await _fileDataSource.uploadFile(file);
      return DataResult.success(response);
    } catch (e) {
      return DataResult.failure(ServerFailure(e.toString()));
    }
  }
}
