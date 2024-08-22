import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/widgets/custom_linear_container_admin.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
    required this.title,
    required this.body,
    required this.createAt, required this.productId,
  });

  final String title;
  final String body;
  final String createAt;
  final String productId;

  @override
  Widget build(BuildContext context) {
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
                TextApp(
                    text: title,
                    style: MyFonts.styleMedium500_16
                        .copyWith(color: context.colors.bluePinkLight)),
              ],
            ),
            Row(
              children: [
                TextApp(
                    text: 'Body :',
                    style: MyFonts.styleBold700_18
                        .copyWith(color: context.colors.textColor)),
                horizontalSpacing(8),
                TextApp(
                    text: body,
                    style: MyFonts.styleMedium500_16
                        .copyWith(color: context.colors.bluePinkLight)),
              ],
            ),
            Row(
              children: [
                TextApp(
                    text: 'Create at :',
                    style: MyFonts.styleBold700_18
                        .copyWith(color: context.colors.textColor)),
                horizontalSpacing(8),
                TextApp(
                    text: createAt,
                    style: MyFonts.styleMedium500_16
                        .copyWith(color: context.colors.bluePinkLight)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
