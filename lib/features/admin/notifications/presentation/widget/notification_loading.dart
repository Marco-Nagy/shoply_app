import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/loading/loading_shimmer.dart';
import 'package:shoply/core/utils/widgets/custom_linear_container_admin.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';
import 'package:shoply/features/admin/notifications/data/model/add_notification_model.dart';

class NotificationLoading extends StatelessWidget {
  const NotificationLoading({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
  return ListView.builder(
    itemCount: 7,
    itemBuilder: (context, index) {
    return CustomLinearContainerAdmin(
      height: 130.h,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.all(15.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TextApp(
                    text: 'Title :',
                    style: MyFonts.styleBold700_18
                        .copyWith(color: context.colors.textColor)),
                horizontalSpacing(8),
                LoadingShimmer(
                  height: 10.h,
                  width: 100.w,
                ),
              ],
            ),
            Row(
              children: [
                TextApp(
                    text: 'Body :',
                    style: MyFonts.styleBold700_18
                        .copyWith(color: context.colors.textColor)),
                horizontalSpacing(8),
                LoadingShimmer(
                  height: 10.h,
                  width: 140.w,
                ),
              ],
            ),
            Row(
              children: [
                TextApp(
                    text: 'Create at :',
                    style: MyFonts.styleBold700_18
                        .copyWith(color: context.colors.textColor)),
                horizontalSpacing(8),
                LoadingShimmer(
                  height: 10.h,
                  width: 120.w,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  },);
  }
}
