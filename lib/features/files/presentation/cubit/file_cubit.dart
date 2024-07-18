import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/utils/image_picker.dart';
import 'package:shoply/features/files/data/repositories/upload_file_repository.dart';

part 'file_state.dart';

part 'file_cubit.freezed.dart';

class FileCubit extends Cubit<FileState<dynamic>> {
  FileCubit(this._fileRepository) : super(const FileState.initial());
  final FileRepository _fileRepository;
  static String base64Image = '';
  XFile? imageFile;
  File? cachedFile;
  final picker = ImagePicker();
  String getImageUrl = '';

  BuildContext myContext =
      sl<GlobalKey<NavigatorState>>().currentState!.context;

  final imageHelper = ImageHelper();

  Future<void> uploadFile({bool isOpenCam = false,bool isCircle= true}) async {
    final file = await imageHelper.imagePicker(
      source: isOpenCam ? ImageSource.camera : ImageSource.gallery,
    );

    if (file == null) return;
    final croppedFile = await imageHelper.imageCropper(
      file: file,
      cropStyle:isCircle? CropStyle.circle: CropStyle.rectangle,
    );
    if (croppedFile != null) {
      imageFile = XFile(croppedFile.path);
      cachedFile = File(croppedFile.path);
      emit(FileState.crop(imageFile));
    }
    emit(const FileState.loading());
      final result = await _fileRepository.uploadFile(imageFile!);
      result.when(
        success: (data) {
          getImageUrl = data.location ?? '';
          debugPrint('getImageUrl $getImageUrl');
          emit(FileState.success(getImageUrl));
        },
        failure: (error) {
        debugPrint('error ==>> $error');
        emit(
            FileState.failure(
              error: error.errorMsg,
            ),
          );
        },
      );

  }

  void removeImage() {
    getImageUrl = '';
    emit(FileState.remove(getImageUrl));
  }
}
