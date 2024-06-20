import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shoply/core/app/service_locator/injection_container.dart';

class PicImageUtils {
  factory PicImageUtils() {
    return _instance;
  }

  PicImageUtils._();

  static final PicImageUtils _instance = PicImageUtils._();
  static String base64Image = '';
  static File? imageFile;
  final picker = ImagePicker();

  Future<File?> getMobImage({bool isCam = false}) async {
    try {
      // Pick an image
      await picker
          .pickImage(source: isCam ? ImageSource.camera : ImageSource.gallery)
          .then((value) {
        if (value != null) {
      File(value.path);
      return   cropImage(File(value.path));
          // debugPrint('Mob Path ==>> ${imageFile!.path}');
        }
      });
    } catch (e) {
      if (isCam == true && await Permission.camera.isGranted) {
        await Permission.camera.request();
      } else if (isCam == false && await Permission.photos.isGranted) {
        await Permission.photos.request();
      } else {
        debugPrint('Image Exception ==> $e');
      }
    }
    return null;
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

  String imageFileToString() {
    final profileImage = File(imageFile!.path);
    final List<int> imageBytes = profileImage.readAsBytesSync();
    return base64Image = base64.encode(imageBytes);
  }

  Future<File?> cropImage(File imgFile) async {
    final croppedFile = await ImageCropper().cropImage(
      sourcePath: kIsWeb ? getWebImage().toString() : imgFile.path,
      compressQuality: 50,
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: 'Cropper',
          toolbarColor: Colors.deepOrange,
          toolbarWidgetColor: Colors.white,
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
      debugPrint('Crop Path ==>> ${croppedFile.path}');

      return File(croppedFile.path);
    }
    return null;
  }
}

// Future<void> _showAlertPermissionsDialog() {
//   return showCupertinoDialog(
//     context: sl<GlobalKey<NavigatorState>>().currentState!.context,
//     builder: (context) {
//       return CupertinoAlertDialog(
//         title: const Text('Permissions Denied'),
//         content: const Text('Allow access to gallery and photos'),
//         actions: <CupertinoDialogAction>[
//           CupertinoDialogAction(
//             onPressed: () => Navigator.of(context).pop(),
//             child: const Text('Cancel'),
//           ),
//           const CupertinoDialogAction(
//             isDefaultAction: true,
//             onPressed: openAppSettings,
//             child: Text('Settings'),
//           ),
//         ],
//       );
//     },
//   );
// }

// Future<void> _uploadImage() async {
//   final pickedFile =
//   await ImagePicker().pickImage(source: ImageSource.gallery);
//   if (pickedFile != null) {
//       _pickedFile = pickedFile;
//   }
// }
//
// void _clear() {
//   _pickedFile = null;
//   _croppedFile = null;
// }
class CropAspectRatioPresetCustom implements CropAspectRatioPresetData {
  @override
  (int, int)? get data => (2, 3);

  @override
  String get name => '2x3 (customized)';
}
