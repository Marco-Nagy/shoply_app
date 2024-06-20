import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shoply/core/app/service_locator/injection_container.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/app_images.dart';
import 'package:shoply/core/styles/icons/dark_icons.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/image_picker.dart';
import 'package:shoply/core/utils/widgets/app_animated_icon.dart';
import 'package:shoply/features/files/presentation/cubit/file_cubit.dart';
import 'package:shoply/features/files/presentation/widgets/hero_photo_view_route_wrapper.dart';
import 'package:shoply/features/files/presentation/widgets/image_menu.dart';

class UserAvatarImage extends StatefulWidget {
  const UserAvatarImage({super.key});

  @override
  _UserAvatarImageState createState() => _UserAvatarImageState();
}

class _UserAvatarImageState extends State<UserAvatarImage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 400,
      child: BlocConsumer<FileCubit, FileState<dynamic>>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: context.read<FileCubit>().getImageUrl.isEmpty
                        ? Image.asset(
                            AppImages.userAvatar,
                            height: 90.0,
                            width: 90.0,
                          )
                        : InkWell(
                            onTap: () {
                              if (context
                                  .read<FileCubit>()
                                  .getImageUrl
                                  .isNotEmpty) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => BlocProvider(
                                      create: (_) => sl<FileCubit>(),
                                      child: HeroPhotoViewRouteWrapper(
                                        imageProvider: NetworkImage(
                                          context.watch<FileCubit>().getImageUrl,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }
                            },
                            child: Hero(
                              tag: 'someTag',
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: NetworkImage(
                                        context.read<FileCubit>().getImageUrl)
                                    as ImageProvider,
                              ),
                            ),
                          ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: -9,
                    child: ImageMenu(
                      child: AppAnimatedIcon(
                        size: 45,
                        backGroundColor: Colors.transparent,
                        iconColor: context.colors.bluePinkLight,
                        animationController: animationController,
                        iconAsset: DarkIcons.cam,
                        onTap: () {
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

// static String base64Image = '';
// static File? imageFile;
// final picker = ImagePicker();
//
// getMobImage({bool isCam = false}) async {
//   try {
//     // Pick an image
//     await picker
//         .pickImage(source: isCam ? ImageSource.camera : ImageSource.gallery)
//         .then((value) {
//       if (value != null) {
//         debugPrint('Mob Path ==>> ${imageFile!.path}');
//
//         _cropImage(File(value.path));
//         debugPrint('Mob Path ==>> ${imageFile!.path}');
//       }
//     });
//   } catch (e) {
//     if (isCam == true && await Permission.camera.isGranted) {
//       await Permission.camera.request();
//     } else if (isCam == false && await Permission.photos.isGranted) {
//       await Permission.photos.request();
//       // await _showAlertPermissionsDialog();
//     } else {}
//   }
// }
//
// Future<String> getWebImage() async {
//   // Pick an image
//   final imageFile = await picker.pickImage(source: ImageSource.gallery);
//
//   final List<int> webImage = await imageFile!.readAsBytes();
//   base64Image = base64.encode(webImage);
//   debugPrint('Image web ==>> ${base64.decode(base64Image)}');
//   debugPrint('Image web ==>> $base64Image');
//
//   return base64Image;
// }
//
// String imageFileToString() {
//   final profileImage = File(imageFile!.path);
//   final List<int> imageBytes = profileImage.readAsBytesSync();
//   return base64Image = base64.encode(imageBytes);
// }
//
// Future<void> _cropImage(File imgFile) async {
//   debugPrint('Crop Path ==>> ${imgFile}');
//
//   final croppedFile = await ImageCropper().cropImage(
//     sourcePath: kIsWeb ? getWebImage().toString() : imgFile.path,
//     compressQuality: 100,
//     uiSettings: [
//       if (kIsWeb) WebUiSettings(
//               context: sl<GlobalKey<NavigatorState>>().currentState!.context,
//               size: const CropperSize(
//                 width: 520,
//                 height: 520,
//               ),
//             ) else Platform.isAndroid
//               ? AndroidUiSettings(
//                   toolbarTitle: 'Cropper',
//                   toolbarColor: Colors.deepOrange,
//                   toolbarWidgetColor: Colors.white,
//                   initAspectRatio: CropAspectRatioPreset.square,
//                   lockAspectRatio: false,
//                   aspectRatioPresets: [
//                     CropAspectRatioPreset.original,
//                     CropAspectRatioPreset.square,
//                     CropAspectRatioPreset.ratio4x3,
//                     // CropAspectRatioPresetCustom(),
//                   ],
//                 )
//               : IOSUiSettings(
//                   title: 'Cropper',
//                   aspectRatioPresets: [
//                     CropAspectRatioPreset.original,
//                     CropAspectRatioPreset.square,
//                     CropAspectRatioPreset.ratio4x3,
//                     // CropAspectRatioPresetCustom(),
//                   ],
//                 ),
//     ],
//   );
//   if (croppedFile != null) {
//     debugPrint('Crop Path ==>> ${croppedFile.path}');
//     setState(() {
//       imgFile = File(croppedFile.path);
//     });
//   }
// }
}
