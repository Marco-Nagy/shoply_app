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
import 'package:shoply/core/app/service_locator/injection_container.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/utils/image_picker.dart';
import 'package:shoply/features/files/data/repositories/upload_file_repository.dart';

part 'file_state.dart';

part 'file_cubit.freezed.dart';

class FileCubit extends Cubit<FileState> {
  FileCubit(this._fileRepository) : super(const FileState.initial());
  final FileRepository _fileRepository;
  static String base64Image = '';
  File? imageFile;
  final picker = ImagePicker();
  String getImageUrl = '';
BuildContext myContext =sl<GlobalKey<NavigatorState>>().currentState!.context;
  Future<void> uploadFile() async {
    await getMobImage();

    if (imageFile == null) return;
      emit(const FileState.loading());
      final result = await _fileRepository.uploadFile(imageFile!);
      result.when(
        success: (data) {
          getImageUrl = data.location ?? '';
          debugPrint('getImageUrl $getImageUrl');
          emit(FileState.success(getImageUrl));
        },
        failure: (error) {
          debugPrint('error ==>> ${error}');
          emit(
            FileState.failure(
              error: error,
            ),
          );
        },
      );

  }

  void removeImage() {
    getImageUrl = '';
    emit(FileState.remove(getImageUrl));
  }

  Future<File?> getMobImage({bool isCam = false}) async {
    try {
      // Pick an image
      await picker
          .pickImage(source: isCam ? ImageSource.camera : ImageSource.gallery)
          .then((value) async {
        if (value != null) {
          return _cropImage(File(value.path));
        }
      });
    } catch (e) {
      if (isCam == true && await Permission.camera.isGranted) {
        await Permission.camera.request();
      } else if (isCam == false && await Permission.photos.isGranted) {
        await Permission.photos.request();
      } else {
        debugPrint('getMobImage ==>> ${imageFile!.path}');
      }
    }
    return null;
  }

  Future<void> _cropImage(File imgFile) async {
    final croppedFile = await ImageCropper().cropImage(
      sourcePath: kIsWeb ? getWebImage().toString() : imgFile.path,
      compressQuality: 50,
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: 'Cropper',
          toolbarColor: myContext.colors.mainColor,
          toolbarWidgetColor: myContext.colors.textColor,
          initAspectRatio: CropAspectRatioPreset.square,
          lockAspectRatio: false,
          aspectRatioPresets: [
            CropAspectRatioPreset.original,
            CropAspectRatioPreset.square,
            CropAspectRatioPreset.ratio4x3,
            CropAspectRatioPresetCustom(),
          ],
        ),
        IOSUiSettings(
          title: 'Cropper',
          aspectRatioPresets: [
            CropAspectRatioPreset.original,
            CropAspectRatioPreset.square,
            CropAspectRatioPreset.ratio4x3,
            // CropAspectRatioPresetCustom(),
          ],
        ),
        WebUiSettings(
          context: sl<GlobalKey<NavigatorState>>().currentState!.context,
          size: const CropperSize(
            width: 520,
            height: 520,
          ),
        ),
      ],
    );
    if (croppedFile != null) {
      imageFile = File(croppedFile.path);
      emit(CropState(imgFile));
    }
  }

  Future<String> getWebImage() async {
    // Pick an image
    final imageFile = await picker.pickImage(source: ImageSource.gallery);

    final List<int> webImage = await imageFile!.readAsBytes();
    base64Image = base64.encode(webImage);
    debugPrint('Image web ==>> ${base64.decode(base64Image)}');
    debugPrint('Image web ==>> $base64Image');

    return base64Image;
  }
}
