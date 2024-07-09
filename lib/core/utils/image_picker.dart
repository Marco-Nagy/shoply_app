import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/core/helpers/extension/mediaQueryValues.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';

class ImageHelper {
  ImageHelper({ImagePicker? imagePicker, ImageCropper? imageCropper})
      : _imagePicker = imagePicker ?? ImagePicker(),
        _imageCropper = imageCropper ?? ImageCropper();

  final ImagePicker _imagePicker;
  final ImageCropper _imageCropper;
  BuildContext myContext =
      sl<GlobalKey<NavigatorState>>().currentState!.context;

  Future<XFile?> imagePicker(
      {ImageSource source = ImageSource.gallery,
      int imageQuality = 100}) async {
    try {
      return _imagePicker.pickImage(source: source, imageQuality: imageQuality);
    } catch (e) {
      if (source == ImageSource.camera && await Permission.camera.isGranted) {
        await Permission.camera.request();
      } else if (source == ImageSource.gallery &&
          await Permission.photos.isGranted) {
        await Permission.photos.request();
      } else {
        debugPrint('_imagePicker Error ==>> $e');
      }
    }
    return null;
  }

  Future<List<XFile>> imageMultiPicker(
      {ImageSource source = ImageSource.gallery,
      int imageQuality = 100,
      bool multiple = false}) async {
    if (multiple) {
      return _imagePicker.pickMultiImage(imageQuality: imageQuality);
    }
    final file = await _imagePicker.pickImage(
        imageQuality: imageQuality, source: source);
    if (file != null) return [file];
    return [];
  }

  Future<CroppedFile?> imageCropper({
    required XFile file,
    CropStyle cropStyle = CropStyle.rectangle,
  }) async {
    return _imageCropper.cropImage(
      sourcePath: file.path,
      compressQuality: 50,
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: 'Cropper',
          toolbarColor: myContext.colors.mainColor,
          toolbarWidgetColor: myContext.colors.textColor,
          initAspectRatio: CropAspectRatioPreset.square,
          cropStyle: cropStyle,
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
            CropAspectRatioPresetCustom(),
          ],
        ),
        WebUiSettings(
          context: sl<GlobalKey<NavigatorState>>().currentState!.context,
          size: CropperSize(
            width: 520,
            height: (myContext.height * .5).toInt(),
          ),
          minContainerHeight: myContext.height * .5,
          // myContext.height*.5,
          viewwMode: WebViewMode.mode_3,
        ),
      ],
    );
  }
}

class CropAspectRatioPresetCustom implements CropAspectRatioPresetData {
  @override
  (int, int)? get data => (2, 3);

  @override
  String get name => '2x3 (customized)';
}
