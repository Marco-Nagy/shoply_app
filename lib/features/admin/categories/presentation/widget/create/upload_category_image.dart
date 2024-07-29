import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:photo_view/photo_view.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/routes/base_routes.dart';
import 'package:shoply/core/styles/app_images.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/widgets/images/custom_image.dart';
import 'package:shoply/features/files/presentation/cubit/file_cubit.dart';
import 'package:shoply/core/utils/widgets/images/hero_photo_view.dart';

class UploadCategoryImage extends StatefulWidget {
  const UploadCategoryImage( {super.key, this.uploadCategoryImage});
final String? uploadCategoryImage;
  @override
  _UploadCategoryImageState createState() => _UploadCategoryImageState();
}

class _UploadCategoryImageState extends State<UploadCategoryImage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    final cubit = context.read<FileCubit>();

    setState(() {
      if (widget.uploadCategoryImage!=null) {
        cubit.getImageUrl= widget.uploadCategoryImage!;
      }
    });
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
    final cubit = context.read<FileCubit>();

    return CustomFadeInLeft(
      duration: 400,
      child: BlocConsumer<FileCubit, FileState<dynamic>>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.maybeWhen(
            loading: () {
              return Container(
                height: 180.h,
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: context.colors.bluePinkLight,
                      width: 2.5,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage(
                      AppImages.gallery,
                    ) as ImageProvider)),
              );
            },
            orElse: () {
              return Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: cubit.getImageUrl.isEmpty
                        ? InkWell(
                            onTap: () async {
                              await context
                                  .read<FileCubit>()
                                  .uploadCroppedImage(isCircle: false);
                            },
                            child: Container(
                              height: 180.h,
                              width: double.infinity,
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: context.colors.bluePinkLight,
                                    width: 2.5,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                    AppImages.gallery,
                                  ) as ImageProvider)),
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              if (cubit.getImageUrl.isNotEmpty) {
                                Navigator.push(
                                  context,
                                  BaseRoute(
                                    page: BlocProvider(
                                      create: (_) => sl<FileCubit>(),
                                      child: HeroPhotoView(
                                        image: cubit.getImageUrl,
                                      ),
                                    ),
                                  ),
                                );
                              }
                            },
                            child: Container(
                                height: 180.h,
                                width: double.infinity,
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: context.colors.bluePinkLight,
                                    width: 2.5,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                  // image: DecorationImage(
                                  //     fit: BoxFit.scaleDown,
                                  //     image: NetworkImage(cubit.getImageUrl,
                                  //         scale: 1.5) as ImageProvider),
                                ),
                                child: CustomImage(
                                  imageUrl: cubit.getImageUrl,
                                )),
                          ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 0,
                    child: cubit.getImageUrl.isNotEmpty
                        ? InkWell(
                            onTap: () {
                              context.read<FileCubit>().removeImage();
                            },
                            child: const FaIcon(
                              FontAwesomeIcons.trashCan,
                              color: CupertinoColors.destructiveRed,
                              size: 35,
                            ),
                          )
                        : const SizedBox.shrink(),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
