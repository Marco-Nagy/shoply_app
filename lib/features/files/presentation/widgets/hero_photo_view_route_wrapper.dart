import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_view/photo_view.dart';
import 'package:shoply/features/files/presentation/cubit/file_cubit.dart';

class HeroPhotoViewRouteWrapper extends StatelessWidget {
  const HeroPhotoViewRouteWrapper({required this.imageProvider, super.key,
    this.backgroundDecoration,
    this.minScale,
    this.maxScale,
    required this.tag,
  });

  final ImageProvider imageProvider;
  final BoxDecoration? backgroundDecoration;
  final dynamic minScale;
  final dynamic maxScale;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FileCubit, FileState>(
      builder: (context, state) {
        return Container(
          constraints: BoxConstraints.expand(
            height: MediaQuery
                .of(context)
                .size
                .height,
          ),
          child: PhotoView(
            imageProvider: imageProvider,
            backgroundDecoration: backgroundDecoration,
            minScale: minScale,
            maxScale: maxScale,
            heroAttributes: PhotoViewHeroAttributes(tag: tag),
          ),
        );
      },
    );
  }
}