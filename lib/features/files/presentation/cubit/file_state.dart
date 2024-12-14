part of 'file_cubit.dart';

@freezed
class FileState<T> with _$FileState<T> {
  const factory FileState.initial() = _Initial;
  const factory FileState.loading() = LoadingState;
  const factory FileState.loadingUploadImageList() = LoadingUploadImageListState;
  const factory FileState.success(T data) = SuccessState<T>;
  const factory FileState.successUploadImageList(String msg) = SuccessUploadImageListState<T>;
  const factory FileState.remove(T data) = RemoveState<T>;
  const factory FileState.crop(T data) = CropState<T>;
  const factory FileState.failure({required String error}) = FailureState;

}
