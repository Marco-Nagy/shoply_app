import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/core/utils/image_picker.dart';
import 'package:shoply/features/files/data/models/Images.dart';
import 'package:shoply/features/files/data/repositories/upload_file_repository.dart';

part 'file_cubit.freezed.dart';
part 'file_state.dart';

class FileCubit extends Cubit<FileState<dynamic>>   {
  FileCubit(this._fileRepository) : super(const FileState.initial());
  final FileRepository _fileRepository;
  static String base64Image = '';
  XFile? imageFile;
  File? cachedFile;
  final picker = ImagePicker();
  String getImageUrl = '';
  List<String> imagesList = [];
  List<XFile?> imagesFileList = [];
  BuildContext myContext =
      sl<GlobalKey<NavigatorState>>().currentState!.context;
  final GlobalKey<AnimatedListState> globalKey = GlobalKey<AnimatedListState>();
  final ScrollController scrollController = ScrollController();

  final imageHelper = ImageHelper();

  Future<void> uploadCroppedImage({
    bool isOpenCam = false,
    bool isCircle = true,
  }) async {
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

  Future<void> uploadLocalImageList() async {
    final file = await imageHelper.imagePicker(
      source: ImageSource.gallery,
    );

    if (file == null) return;
    imageFile = XFile(file.path);
    var bytes = await imageFile!.readAsBytes();
    base64Image = base64UrlEncode(bytes);
    emit(const FileState.loading());

    addImageToList();
    emit(FileState.success(base64Image));
    imagesFileList.add(imageFile);
    emit(FileState.success(imageFile));

  }

  Future<void> uploadNetworkImageList() async {

    final file = await imageHelper.imagePicker(
      source: ImageSource.gallery,
    );

    if (file == null) return;
    imageFile = XFile(file.path);
    emit(const FileState.loadingUploadImageList());

    final result = await _fileRepository.uploadFile(imageFile!);
    result.when(
      success: (data) {
        getImageUrl = data.location ?? '';
        addImageToList();
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

  void addImageToList() {
    var index = imagesList.length;
    imagesList.add(getImageUrl);
    if (globalKey.currentState != null) {
      globalKey.currentState!.insertItem(index);
      Future.delayed(Durations.medium4).then(
        (value) {
          scrollController.animateTo(scrollController.position.maxScrollExtent,
              duration: Durations.medium4, curve: Curves.easeIn);
        },
      );
    }
  }

  void removeImageFromList(
      {required int index, Widget? widget, required String removedItem}) {
    if (imagesList.isNotEmpty) {
      removedItem = imagesList.removeAt(index) ;
      globalKey.currentState!.removeItem(
        index,
        (context, animation) => widget!,
      );
      emit(FileState.remove(removedItem));
    }
  }
}
