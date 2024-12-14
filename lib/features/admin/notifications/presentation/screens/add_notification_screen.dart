import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/utils/admin_app_bar.dart';
import 'package:shoply/features/admin/notifications/presentation/bloc/add_notification/admin_notifications_bloc.dart';
import 'package:shoply/features/admin/notifications/presentation/bloc/send_notification/send_notification_bloc.dart';
import 'package:shoply/features/admin/notifications/presentation/widget/add_notification_body.dart';

class AddNotificationsScreen extends StatelessWidget {
  const AddNotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
          sl<AdminNotificationsBloc>()
            ..add(const AdminNotificationsEvent.fetchAdminNotifications()),
        ),
        BlocProvider(
          create: (context) => sl<SendNotificationBloc>(),
        ),
      ],
      child: Scaffold(
        appBar: AdminAppBar(
          title: 'Add Notifications',
          isMain: true,
          backgroundColor: context.colors.bluePinkDark,
        ),
        body: const AddNotificationBody(),
      ),
    );
  }
}
