
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_view/photo_view.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/app_images.dart';
import 'package:shoply/features/files/presentation/cubit/file_cubit.dart';

class HeroPhotoView extends StatelessWidget {
  const HeroPhotoView({
    super.key,
    this.backgroundDecoration,
    this.minScale,
    this.maxScale,
    required this.image,
  });

  final BoxDecoration? backgroundDecoration;
  final dynamic minScale;
  final dynamic maxScale;
  final String image;

  @override
  Widget build(BuildContext context) {
    ImageProvider imageProvider;

    return BlocBuilder<FileCubit, FileState>(
      builder: (context, state) {
        return Scaffold(
          body: Container(
              color: Colors.transparent,
              child: AspectRatio(
                aspectRatio: 2.5 / 4,
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: context.colors.mainColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Hero(
                    tag: 'tag$image',
                    child: PhotoView(
                      imageProvider: NetworkImage(
                        image,
                      ),
                      backgroundDecoration: BoxDecoration(
                        color: context.colors.mainColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      minScale: minScale,
                      maxScale: maxScale,
                      errorBuilder: (context, error, stackTrace) => Image.asset(
                        AppImages.appImage,
                        height: 100,
                        width: 100,
                      ),
                    ),
                    flightShuttleBuilder: (flightContext, animation,
                            flightDirection, fromHeroContext, toHeroContext) =>
                        // RotationTransition(
                        //   turns: animation,
                        ScaleTransition(
                      scale: animation,

                      //   SlideTransition(
                      //     transformHitTests: false,
                      // position: Tween<Offset>(
                      //   begin: Offset.zero,
                      //   end: const Offset(1.0, 1.5),
                      // ).animate(CurvedAnimation(
                      //     parent: animation,
                      //     curve: Curves.fastEaseInToSlowEaseOut,
                      //     reverseCurve: Curves.fastLinearToSlowEaseIn)),
                      child: PhotoView(
                        imageProvider: NetworkImage(
                          image,
                        ),
                        backgroundDecoration: BoxDecoration(
                          color: context.colors.mainColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        minScale: minScale,
                        maxScale: maxScale,
                        enableRotation: true,
                        errorBuilder: (context, error, stackTrace) =>
                            Image.asset(
                          AppImages.appImage,
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ),
                  ),
                ),
              )),
        );
      },
    );
  }
}
