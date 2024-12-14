import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/icons/app_animated_icons.dart';
import 'package:shoply/core/utils/message_type_const.dart';
import 'package:shoply/core/utils/widgets/app_animated_icon.dart';
import 'package:shoply/core/utils/widgets/snack_bar.dart';
import 'package:shoply/features/admin/notifications/data/model/add_notification_model.dart';
import 'package:shoply/features/admin/notifications/presentation/bloc/send_notification/send_notification_bloc.dart';
import 'package:vibration/vibration.dart';

class SendNotificationWidget extends StatefulWidget {
  const SendNotificationWidget({
    super.key,
    required this.notification,
    required this.index,
  });

  final AddNotificationModel notification;
  final int index;

  @override
  _SendNotificationWidgetState createState() => _SendNotificationWidgetState();
}

class _SendNotificationWidgetState extends State<SendNotificationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SendNotificationBloc, SendNotificationState>(
      listener: (context, state) {
        state.whenOrNull(
          sendNotificationSuccess: () {
            aweSnackBar(
                title: 'Sent Successfully',
                msg: 'Your Notification has been Sent Successfully',
                context: context,
                type: MessageTypeConst.success);
          },
          sendNotificationFailure: (errorMessage) {
            aweSnackBar(
                title: 'Sent Failure',
                msg: errorMessage,
                context: context,
                type: MessageTypeConst.failure);
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          sendingNotificationLoading: (index) {
            if (index == widget.index) {
              return SizedBox(
                  height: 25.h,
                  width: 25.w,
                  child: Center(
                    child: CircularProgressIndicator(
                      color: context.colors.bluePinkLight,
                    ),
                  ));
            }

            return Container(
              height: 50,
              width: 50,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: context.colors.navBarbg,
                boxShadow: [
                  BoxShadow(
                      color: context.colors.bluePinkDark.withOpacity(0.5),
                      spreadRadius: 10,
                      blurRadius: 10,
                      offset: const Offset(0, 0),
                      blurStyle: BlurStyle.solid),
                  BoxShadow(
                      color: context.colors.bluePinkLight.withOpacity(1),
                      spreadRadius: 3,
                      blurRadius: 2,
                      offset: const Offset(0, 0),
                      blurStyle: BlurStyle.outer),
                ],
                borderRadius: BorderRadius.circular(50),
              ),
              child: AppAnimatedIcon(
                size: 35,
                backGroundColor: Colors.transparent,
                animationController: _controller,
                iconAsset: AppAnimatedIcons.send,
                onTap: () {
                  Vibration.vibrate(duration: 700, pattern: [50, 50, 50, 500]);
                  Future.delayed(const Duration(milliseconds: 700));
                  context.read<SendNotificationBloc>().add(
                      SendNewNotificationEvent(
                          title: widget.notification.title,
                          body: widget.notification.body,
                          productId: widget.notification.productId,
                          indexId: widget.index));
                },
              ),
            );
          },
          orElse: () {
            return Container(
              height: 50,
              width: 50,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: context.colors.navBarbg,
                boxShadow: [
                  BoxShadow(
                      color: context.colors.bluePinkDark.withOpacity(0.5),
                      spreadRadius: 10,
                      blurRadius: 10,
                      offset: const Offset(0, 0),
                      blurStyle: BlurStyle.solid),
                  BoxShadow(
                      color: context.colors.bluePinkLight.withOpacity(1),
                      spreadRadius: 3,
                      blurRadius: 2,
                      offset: const Offset(0, 0),
                      blurStyle: BlurStyle.outer),
                ],
                borderRadius: BorderRadius.circular(50),
              ),
              child: AppAnimatedIcon(
                size: 35,
                backGroundColor: Colors.transparent,
                animationController: _controller,
                iconAsset: AppAnimatedIcons.send,
                onTap: () {
                  Vibration.vibrate(duration: 700, pattern: [50, 50, 50, 500]);
                  Future.delayed(const Duration(milliseconds: 700));
                  context.read<SendNotificationBloc>().add(
                      SendNewNotificationEvent(
                          title: widget.notification.title,
                          body: widget.notification.body,
                          productId: widget.notification.productId,
                          indexId: widget.index));
                },
              ),
            );
          },
        );
      },
    );
  }
}
