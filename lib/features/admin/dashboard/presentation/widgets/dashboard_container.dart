import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/mediaQueryValues.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/loading/loading_shimmer.dart';
import 'package:shoply/core/utils/widgets/custom_linear_container_admin.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';

class DashboardContainer extends StatelessWidget {
  const DashboardContainer({
    super.key,
    required this.title,
    required this.value,
    required this.image, required this.isLoading,
  });

  final String title;
  final String value;
  final String image;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return CustomLinearContainerAdmin(
      width: context.width,
      height: 130.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextApp(
                  text: title,
                  style: MyFonts.styleBold700_24
                      .copyWith(color: context.colors.textColor),
                ),
                if(isLoading)
                  LoadingShimmer(height: 30.h,width: 100.h,)
                else
                TextApp(
                  text: value,
                  style: MyFonts.styleBold700_24
                      .copyWith(color: context.colors.textColor),
                ),
              ],
            ),
              Image.asset(
                image,
                height: 90.h,
                width: 90.w,
              ),

          ],
        ),
      ),
    );
  }
}
