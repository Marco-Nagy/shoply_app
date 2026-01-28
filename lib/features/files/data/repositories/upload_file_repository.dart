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

  /// Upload image to Firebase Storage and return download URL
  /// [file] - The image file to upload
  /// [folder] - The folder name in Firebase Storage (default: 'categories')
  /// Returns DataResult containing the download URL
  Future<DataResult<String>> uploadImageToFirebaseStorage({
    required XFile file,
    String folder = 'categories',
  }) async {
    try {
      final downloadUrl = await _fileDataSource.uploadImageToFirebaseStorage(
        file: file,
        folder: folder,
      );
      return DataResult.success(downloadUrl);
    } catch (e) {
      return DataResult.failure(ServerFailure(e.toString()));
    }
  }

  /// Upload image to Cloudinary and return secure URL
  /// [file] - The image file to upload
  /// [onSendProgress] - Callback for upload progress
  /// Returns DataResult containing the secure URL
  Future<DataResult<String>> uploadToCloudinary({
    required XFile file,
    Function(int sent, int total)? onSendProgress,
  }) async {
    try {
      final downloadUrl = await _fileDataSource.uploadToCloudinary(
        file: file,
        onSendProgress: onSendProgress,
      );
      return DataResult.success(downloadUrl);
    } catch (e) {
      return DataResult.failure(ServerFailure(e.toString()));
    }
  }
}
