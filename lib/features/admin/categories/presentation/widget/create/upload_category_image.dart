import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/app_images.dart';
import 'package:shoply/core/styles/icons/dark_icons.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/widgets/app_animated_icon.dart';
import 'package:shoply/features/files/presentation/cubit/file_cubit.dart';
import 'package:shoply/features/files/presentation/widgets/hero_photo_view_route_wrapper.dart';
import 'package:shoply/features/files/presentation/widgets/image_menu.dart';

class UploadCategoryImage extends StatefulWidget {
  const UploadCategoryImage({super.key});

  @override
  _UploadCategoryImageState createState() => _UploadCategoryImageState();
}

class _UploadCategoryImageState extends State<UploadCategoryImage>
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
                                  .uploadFile(isCircle: false);
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
                                  MaterialPageRoute(
                                    builder: (_) => BlocProvider(
                                      create: (_) => sl<FileCubit>(),
                                      child: HeroPhotoViewRouteWrapper(
                                        imageProvider: NetworkImage(
                                          cubit.getImageUrl,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }
                            },
                            child: Hero(
                                tag: 'someTag',
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
                                      image: DecorationImage(
                                          fit: BoxFit.scaleDown,
                                          image: NetworkImage(cubit.getImageUrl,
                                              scale: 1.5) as ImageProvider)),
                                )

                                // CircleAvatar(
                                //   radius: 50,
                                //   backgroundImage: NetworkImage(
                                //     cubit.getImageUrl,
                                //   ) as ImageProvider,
                                // ),
                                ),
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
