import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/routes/base_routes.dart';
import 'package:shoply/core/utils/widgets/images/custom_image.dart';
import 'package:shoply/core/utils/widgets/images/hero_photo_view.dart';
import 'package:shoply/features/files/presentation/cubit/file_cubit.dart';

class UploadImageItem extends StatelessWidget {
  const UploadImageItem(
      {super.key,
      required this.index,
      required this.animation,
    required this.image,
  });

  final int index;
  final Animation<double> animation;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        InkWell(
          onTap: () {
            if (image.isNotEmpty) {
              Navigator.push(
                context,
                BaseRoute(
                  page: BlocProvider(
                    create: (_) => sl<FileCubit>(),
                    child: HeroPhotoView(
                      image: image,
                    ),
                  ),
                ),
              );
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: context.colors.bluePinkLight,blurStyle: BlurStyle.inner)],
                  borderRadius: BorderRadius.circular(10.w),

                ),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 10.w,
                  child: CustomImage(
                    imageUrl: image,

                  ),
                )),
          ),
        ),
        Positioned(
          bottom: 5,
          right: 0,
          child: image.isNotEmpty
              ? InkWell(
                  onTap: () {
                    if (image.isNotEmpty) {
                      context.read<FileCubit>().removeImageFromList(
                            index: index,
                            widget: SlideTransition(
                              position: animation.drive(Tween<Offset>(begin: const Offset(0, 0),end: const Offset(1,0))),
                              child: UploadImageItem(
                                index: index,
                                animation: animation,
                                image: image,
                              ),
                            ),
                            removedItem: image,
                          );
                    }
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
  }
}
