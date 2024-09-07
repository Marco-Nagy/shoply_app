import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/Services/push_notifications/firebase_cloud_messaging.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';

class NotificationChange extends StatelessWidget {
  const NotificationChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ValueListenableBuilder(
        valueListenable: FirebaseCloudMessaging().isNotificationSubscribed,
        builder: (BuildContext context, value, Widget? child) {
          return Row(
            children: [
              value
                  ? FadeInDown(
                      delay: const Duration(milliseconds: 300),
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOutCubic,
                      from: 10,
                      child: Icon(
                        Icons.notifications_active_rounded,
                        color: context.colors.textColor,
                      ),
                    )
                  : FadeInUp(
                      delay: const Duration(milliseconds: 300),
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOutCirc,
                      from: 10,
                      child: Icon(
                        Icons.notifications_off_rounded,
                        color: context.colors.textColor,
                      ),
                    ),
              SizedBox(
                width: 8.w,
              ),
              TextApp(
                text: context.translate(LangKeys.notifications),
                style: MyFonts.styleMedium500_18
                    .copyWith(color: context.colors.textColor),
              ),
              const Spacer(),
              //* Change Theme Buttons
              GestureDetector(
                onTap: FirebaseCloudMessaging().switchUserSubscribe,
                child: Container(
                  width: 60.w,
                  height: 35.h,
                  // padding: const EdgeInsets.symmetric(vertical: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    border: Border.all(
                      width: 1.5,
                      color:value? context.colors.bluePinkLight:Colors.grey,
                    ),
                    color: value? context.colors.bluePinkLight:Colors.grey,
                  ),
                  child: value
                      ?Align(
                    alignment: Alignment.centerRight,
                    child: FadeInLeft(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOutCirc,
                      from: 50,
                      child: CircleAvatar(
                        radius: 15.0,
                        backgroundColor: context.colors.bluePinkDark,
                        child: Icon(
                          Icons.notifications_off_rounded,
                          color: context.colors.textColor,
                        ),
                      ),
                    ),
                  )
                      : Align(
                    alignment: Alignment.centerLeft,
                    child: FadeInRight(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOutCubic,
                      from: 50,
                      child: CircleAvatar(
                        radius: 15.0,
                        backgroundColor: context.colors.bluePinkDark,
                        child: Icon(
                          Icons.notifications_active_rounded,
                          color: context.colors.textColor,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
