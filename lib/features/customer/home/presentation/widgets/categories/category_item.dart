import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/app_images.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/widgets/custom_linear_container_admin.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key, required this.imageUrl, required this.categoryName});

  final String imageUrl;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomLinearContainerAdmin(
            width: 71.w,
            height: 71.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
                child: CachedNetworkImage(
              fit: BoxFit.fill,
              fadeInCurve: Curves.fastLinearToSlowEaseIn,
              fadeInDuration: const Duration(milliseconds: 200),
              height: 71.h,
              width: 71.w,
              imageUrl: imageUrl,
              placeholder: (context, url) => Image.asset(
                AppImages.appImage,
                height: 71.h,
                width: 71.w,
              ),
              // fit: BoxFit.fill,
              errorWidget: (context, url, error) => Image.asset(
                AppImages.appImage,
                height: 71.h,
                width: 71.w,
              ),
            ))),
        verticalSpacing(10),
        SizedBox(
          height: 35.h,
          width: 75.w,
          child: TextApp(
            text: categoryName,
            textAlign: TextAlign.center,
            style: MyFonts.styleBold700_12.copyWith(color: context.colors.textColor),
          ),
        ),

      ],
    );
  }
}
