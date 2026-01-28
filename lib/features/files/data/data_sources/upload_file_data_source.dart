import 'dart:io';

import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:shoply/core/app/Networking/apis/api_service.dart';
import 'package:shoply/core/Services/firebase_helper/fire_store_helper.dart';
import 'package:shoply/core/Services/cloudinary/cloudinary_service.dart';
import 'package:shoply/features/files/data/models/upload_model.dart';

@lazySingleton
class FileDataSource {
  FileDataSource(
      this._apiService, this._fireStoreService, this._cloudinaryService);

  final ApiService _apiService;
  final FireStoreService _fireStoreService;
  final CloudinaryService _cloudinaryService;

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
    return _apiService.uploadFile(form);
  }

  /// Upload image to Firebase Storage and return download URL
  /// [file] - The image file to upload
  /// [folder] - The folder name in Firebase Storage (default: 'categories')
  /// Returns the download URL of the uploaded image
  Future<String> uploadImageToFirebaseStorage({
    required XFile file,
    String folder = 'categories',
  }) async {
    try {
      // Create a reference to Firebase Storage
      final storageRef = _fireStoreService.firebaseStorage.ref();

      // Generate unique filename using timestamp
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final fileName = '${timestamp}_${file.name}';

      // Create reference to the file location
      final fileRef = storageRef.child('$folder/$fileName');

      // Upload the file
      final uploadTask = await fileRef.putFile(File(file.path));

      // Get the download URL
      final downloadUrl = await uploadTask.ref.getDownloadURL();

      return downloadUrl;
    } catch (e) {
      throw Exception(
          'Failed to upload image to Firebase Storage: ${e.toString()}');
    }
  }

  /// Upload image to Cloudinary and return secure URL
  /// [file] - The image file to upload
  /// [onSendProgress] - Callback for upload progress
  /// Returns the secure URL of the uploaded image
  Future<String> uploadToCloudinary({
    required XFile file,
    Function(int sent, int total)? onSendProgress,
  }) async {
    return _cloudinaryService.uploadImage(
      file: File(file.path),
      onSendProgress: onSendProgress,
    );
  }
}
