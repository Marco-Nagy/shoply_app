import 'dart:convert';
import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/styles/app_images.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.imageUrl, this.tag,

  });

  final String imageUrl;
  final String? tag;


  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Hero(
        tag:tag?? 'tag$imageUrl',
        flightShuttleBuilder: (flightContext, animation, flightDirection,
                fromHeroContext, toHeroContext) =>
            RotationTransition(
              turns: animation,
          //   ScaleTransition(
          // scale: animation,
          // SlideTransition(
          //   transformHitTests: false,
          //   position: Tween<Offset>(
          //     begin: Offset.zero,
          //     end: const Offset(1.5, 0.0),
          //   ).animate(CurvedAnimation(
          //       parent: animation,
          //       curve: Curves.fastEaseInToSlowEaseOut,
          //       reverseCurve: Curves.fastLinearToSlowEaseIn)),
          child:  FadeInImage.assetNetwork(
                  fit: BoxFit.fill,
                  placeholderFit: BoxFit.scaleDown,
                  placeholder: AppImages.appImage,
                  imageErrorBuilder: (context, error, stackTrace) {
                    return const Image(
                      image: AssetImage(AppImages.appImage),
                      height: 60,
                      width: 60,
                      fit: BoxFit.contain,
                    );
                  },
                  image: imageUrl,
                ),
        ),
        child:  CachedNetworkImage(
                fit: BoxFit.fill,
                fadeInCurve: Curves.fastLinearToSlowEaseIn,
                fadeInDuration: const Duration(milliseconds: 200),
                height: 100.h,
                width: 120.w,
                imageUrl: imageUrl,
                placeholder: (context, url) => Image.asset(
                  AppImages.appImage,
                  height: 100,
                  width: 100,
                ),
                // fit: BoxFit.fill,
                errorWidget: (context, url, error) => Image.asset(
                  AppImages.appImage,
                  height: 100,
                  width: 100,
                ),
              ),
      ),
    );
  }
  localImage(){
    return Image.memory(
      base64Decode(imageUrl),
      fit: BoxFit.fill,
      height: 100.h,
      width: 120.w,
      errorBuilder: (context, error, stackTrace) => Image.asset(
        AppImages.appImage,
        height: 100,
        width: 100,
      ),
    );
  }
}
