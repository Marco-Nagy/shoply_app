import 'dart:ui';

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
import 'package:shoply/core/styles/icons/app_animated_icons.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/message_type_const.dart';
import 'package:shoply/core/utils/widgets/app_animated_icon.dart';
import 'package:shoply/core/utils/widgets/images/custom_image.dart';
import 'package:shoply/core/utils/widgets/snack_bar.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/features/admin/products/presentation/widget/productImage/upload_image_item.dart';
import 'package:shoply/features/admin/products/presentation/widget/productImage/uploading_images_loading.dart';
import 'package:shoply/features/files/presentation/cubit/file_cubit.dart';
import 'package:shoply/core/utils/widgets/images/hero_photo_view.dart';

class UploadProductImagesList extends StatefulWidget {
  const UploadProductImagesList({
    super.key,
  });

// final String? uploadCategoryImage;
  @override
  _UploadProductImagesListState createState() =>
      _UploadProductImagesListState();
}

class _UploadProductImagesListState extends State<UploadProductImagesList>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    final cubit = context.read<FileCubit>();

    // setState(() {
    //   if (widget.uploadCategoryImage!=null) {
    //     cubit.getImageUrl= widget.uploadCategoryImage!;
    //   }
    // });
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
              return       Card(
                elevation: 12,
                shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(50),),
                shadowColor: context.colors.bluePinkLight,
                child: AppAnimatedIcon(
                  animationController: animationController,
                  iconAsset: AppAnimatedIcons.cam,
                  backGroundColor: context.colors.bluePinkDark,
                  size: 60,
                  onTap: () {
                    Future.delayed(const Duration(milliseconds: 400)).then(
                      (value) async {
                        await context.read<FileCubit>().uploadLocalImageList();
                      },
                    );
                  },
                ),
              );
            },
            loadingUploadImageList: () {
              return const UploadingImagesLoading();
            },
            successUploadImageList: (data) {
              return aweSnackBar(
                  title: 'SuccessFully',
                  msg: data,
                  context: context,
                  type: MessageTypeConst.success);
            },
            orElse: () {
              return SizedBox(
                height: MediaQuery.of(context).size.height * .1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: context.colors.textColor,
                            borderRadius: BorderRadius.circular(150),
                            boxShadow: [
                              BoxShadow(
                                  color: context.colors.bluePinkDark
                                      .withOpacity(0.5),
                                  spreadRadius: 10,
                                  blurRadius: 10,
                                  offset: const Offset(0, 0),
                                  blurStyle: BlurStyle.solid),
                              BoxShadow(
                                  color: context.colors.bluePinkLight
                                      .withOpacity(1),
                                  spreadRadius: 3,
                                  blurRadius: 2,
                                  offset: const Offset(0, 0),
                                  blurStyle: BlurStyle.outer),
                            ],
                          ),
                          child: Center(
                            child: AppAnimatedIcon(
                              animationController: animationController,
                              iconAsset: AppAnimatedIcons.cam,
                              backGroundColor: context.colors.bluePinkDark,
                              size: 60,
                              onTap: () {
                                Future.delayed(const Duration(milliseconds: 400))
                                    .then(
                                  (value) async {
                                    await context
                                        .read<FileCubit>()
                                        .uploadLocalImageList();
                                  },
                                );
                              },
                            ),
                          ),
                        ),

                      ],
                    ),
                    if (cubit.imagesList.isNotEmpty)
                      Expanded(
                        child: AnimatedList(
                          key: cubit.globalKey,
                          controller: cubit.scrollController,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          initialItemCount: cubit.imagesList.length,
                          itemBuilder: (BuildContext context, int index,
                              Animation<double> animation) {
                            return SizeTransition(
                                sizeFactor: animation,
                                axis: Axis.horizontal,
                                child: UploadImageItem(
                                  index: index,
                                  animation: animation,
                                  image: cubit.imagesList[index],
                                ));
                          },
                        ),
                      ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
