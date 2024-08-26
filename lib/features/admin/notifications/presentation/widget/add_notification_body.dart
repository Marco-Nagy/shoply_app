import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_swipe_action_cell/core/controller.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/core/helpers/extension/mediaQueryValues.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/helpers/extension/navigations.dart';
import 'package:shoply/core/styles/icons/app_animated_icons.dart';
import 'package:shoply/core/utils/loading/empty_screen.dart';
import 'package:shoply/core/utils/widgets/custom_bottom_sheet.dart';
import 'package:shoply/core/utils/widgets/custom_dialogs.dart';
import 'package:shoply/core/utils/widgets/custom_swipe_to_action.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/features/admin/notifications/data/model/add_notification_model.dart';
import 'package:shoply/features/admin/notifications/presentation/bloc/add_notification/admin_notifications_bloc.dart';
import 'package:shoply/features/admin/notifications/presentation/widget/notification_loading.dart';
import 'package:shoply/features/admin/products/presentation/bloc/admin_product_bloc.dart';
import 'package:vibration/vibration.dart';
import 'create/create_notification.dart';
import 'create/create_notification_bottom_sheet_widget.dart';
import 'notification_item.dart';

class AddNotificationBody extends StatefulWidget {
  const AddNotificationBody({super.key});

  @override
  State<AddNotificationBody> createState() => _AddNotificationBodyState();
}

class _AddNotificationBodyState extends State<AddNotificationBody>
    with SingleTickerProviderStateMixin {
  SwipeActionController? controller;
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
    width = context.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const CreateNotification(),
            verticalSpacing(8),
            Expanded(
                child: RefreshIndicator(
                    onRefresh: () async {
                  context.read<AdminNotificationsBloc>().add(
                      const AdminNotificationsEvent.fetchAdminNotifications());
                },
                color: context.colors.bluePinkLight,
                child: BlocBuilder<AdminNotificationsBloc,
                    AdminNotificationsState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      getAdminNotificationsListEmpty: () => const EmptyScreen(),
                      getAdminNotificationsListFailure: (errorMessage) {
                        return AwesomeSnackbarContent(
                            title: 'Error',
                            message: errorMessage,
                            contentType: ContentType.failure);
                      },
                      adminNotificationsLoading: () =>
                          const NotificationLoading(),
                      getAdminNotificationsListSuccess: (notificationsList) {
                        return ListView.builder(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: notificationsList.length,
                          itemBuilder: (context, index) {
                            return CustomSwipeToAction(
                              index: index,
                              rightButtonBackgroundColor: Colors.redAccent,
                          animatedRightButtonAsset: AppAnimatedIcons.trash,
                          animatedLiftButtonAsset: AppAnimatedIcons.edit,
                          leftButtonBackgroundColor: Colors.blue,
                          onPressRightButton: () async {
                            Vibration.vibrate(
                                duration: 700, pattern: [50, 100, 50, 500]);
                            Future.delayed(const Duration(milliseconds: 700));
                            CustomDialog.twoButtonDialog(
                                context: context,
                                textBody: 'Are you sure you want to delete ',
                                // ${categoriesList[index]!.name} ??',
                                textButton1: 'Delete',
                                textButton2: 'Cancel',
                                onPressed: () async {
                                  setState(() {

                                  });
                                      notificationsList[index]!.delete();

                                      _deleteCategory(context,
                                          notification:
                                          notificationsList[
                                      index]!)
                                      .whenComplete(
                                        () {
                                      context
                                          .read<AdminNotificationsBloc>()
                                          .add(const AdminNotificationsEvent.fetchAdminNotifications()
                                   );
                                      context.pop();
                                    },
                                  );
                                },
                                isLoading: true);
                          },
                          onPressLeftButton: () async {
                            Vibration.vibrate(
                                duration: 500, pattern: [50, 200, 50, 100]);
                            Future.delayed(const Duration(milliseconds: 500));
                            CustomBottomSheet.showModalBottomSheetWidget(
                              context: context,
                              child: MultiBlocProvider(
                                providers: [
                                  BlocProvider(
                                      create: (context) => sl<
                                          AdminProductBloc>()..add(const AdminProductEvent.getAdminProductList())),
                                      BlocProvider(
                                          create: (context) =>
                                              sl<AdminNotificationsBloc>()),
                                      BlocProvider(
                                          create: (context) => sl<
                                              AdminNotificationsBloc>()
                                            ..add(const AdminNotificationsEvent
                                                .fetchAdminNotifications())),
                                    ],
                                    child: CreateNotificationBottomSheetWidget(
                                      notification: notificationsList[index]!,
                                    ),
                                  ),
                                  whenComplete: () {
                                    context.read<AdminNotificationsBloc>().add(
                                        const AdminNotificationsEvent
                                            .fetchAdminNotifications());
                                  },
                                );
                              },
                              child: AnimatedContainer(
                            duration:
                                Duration(milliseconds: 400 + (index * 250)),
                            curve: Curves.easeIn,
                            transform: Matrix4.translationValues(
                                myAnimation ? 0 : width, 0, 0),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: NotificationItem(
                                    notification: notificationsList[index]!, index: index,
                                  ),
                                ),
                              ),
                            );
                      },
                        );
                      },
                      orElse: () => const SizedBox.shrink(),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _deleteCategory(BuildContext context,
      {required AddNotificationModel notification}) async {
    context
        .read<AdminNotificationsBloc>()
        .add(DeleteNotificationEvent(notification: notification));
  }
}
