import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/mediaQueryValues.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/loading/loading_shimmer.dart';
import 'package:shoply/core/utils/widgets/custom_linear_container_admin.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';

class DashboardContainerLoading extends StatelessWidget {
  const DashboardContainerLoading({
    super.key,
  });

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
                LoadingShimmer(
                  height: 30.h,
                  width: 160.h,
                ),
                LoadingShimmer(
                  height: 30.h,
                  width: 100.h,
                ),
              ],
            ),
            LoadingShimmer(
              height: 90.h,
              width: 90.h,
            ),
          ],
        ),
      ),
    );
  }
}
