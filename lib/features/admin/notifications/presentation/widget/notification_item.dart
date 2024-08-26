import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/date_extension.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/helpers/extension/string_exetension.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/styles/icons/app_animated_icons.dart';
import 'package:shoply/core/utils/widgets/app_animated_icon.dart';
import 'package:shoply/core/utils/widgets/custom_linear_container_admin.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';
import 'package:shoply/features/admin/notifications/data/model/add_notification_model.dart';
import 'package:shoply/features/admin/notifications/presentation/widget/send_notification_widget.dart';

class NotificationItem extends StatefulWidget {
  const NotificationItem({
    super.key,
    required this.notification,
    required this.index,
  });

  final AddNotificationModel notification;
  final int index;

  @override
  State<NotificationItem> createState() => _NotificationItemState();
}

class _NotificationItemState extends State<NotificationItem>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  double width = 0;
  bool myAnimation = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        setState(() {
          animationController = AnimationController(
              vsync: this, duration: const Duration(milliseconds: 300));
          myAnimation = true;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomLinearContainerAdmin(
      height: 200.h,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.all(15.w),
        child: Row(
          children: [
            Expanded(
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
                          text: widget.notification.title,
                          style: MyFonts.styleMedium500_16
                              .copyWith(color: context.colors.bluePinkLight)),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextApp(
                          text: 'Body :',
                          style: MyFonts.styleBold700_18
                              .copyWith(color: context.colors.textColor)),
                      horizontalSpacing(8),
                      Expanded(
                        child: TextApp(
                          text: widget.notification.body,
                          style: MyFonts.styleMedium500_14
                              .copyWith(color: context.colors.bluePinkLight),
                          maxLines: 3,
                        ),
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
                      TextApp(
                          text: widget
                              .notification.createAt.getFormatDayMonthYear
                              .toString()
                              .convertDataFormate(),
                          style: MyFonts.styleMedium500_12
                              .copyWith(color: context.colors.bluePinkLight)),
                    ],
                  ),
                ],
              ),
            ),
            horizontalSpacing(5),
            SendNotificationWidget(
              notification: widget.notification,
              index: widget.index,
            ),
          ],
        ),
      ),
    );
  }
}
