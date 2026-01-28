import 'dart:io';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shoply/core/app/env_variables.dart';

@lazySingleton
class CloudinaryService {
  CloudinaryService() {
    _dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
      ),
    );
  }

  final Dio _dio = Dio();

  /// Upload an image to Cloudinary using unsigned upload
  /// [file] - The image file to upload
  /// [onSendProgress] - Callback for upload progress
  /// Returns the secure URL of the uploaded image
  Future<String> uploadImage({
    required File file,
    Function(int sent, int total)? onSendProgress,
  }) async {
    try {
      final cloudName = EnvVariables.instance.cloudinaryCloudName;
      final uploadPreset = EnvVariables.instance.cloudinaryUploadPreset;

      final url = 'https://api.cloudinary.com/v1_1/$cloudName/image/upload';

      final formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(file.path),
        'upload_preset': uploadPreset,
      });

      final response = await _dio.post(
        url,
        data: formData,
        onSendProgress: onSendProgress,
      );

      if (response.statusCode == 200) {
        return response.data['secure_url'] as String;
      } else {
        throw Exception('Cloudinary upload failed: ${response.statusMessage}');
      }
    } catch (e) {
      if (e is DioException) {
        final errorMsg = e.response?.data['error']?['message'] ?? e.message;
        throw Exception('Cloudinary Error: $errorMsg');
      }
      throw Exception('Failed to upload image to Cloudinary: ${e.toString()}');
    }
  }
}
