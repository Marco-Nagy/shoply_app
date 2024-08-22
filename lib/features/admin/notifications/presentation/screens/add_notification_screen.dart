import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/utils/admin_app_bar.dart';
import 'package:shoply/features/admin/categories/presentation/bloc/admin_categories_bloc.dart';
import 'package:shoply/features/admin/categories/presentation/widget/add_categories_body.dart';
import 'package:shoply/features/admin/notifications/presentation/widget/add_notification_body.dart';

class AddNotificationsScreen extends StatelessWidget {
  const AddNotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AdminAppBar(
          title: 'Add Notifications',
          isMain: true,
          backgroundColor: context.colors.bluePinkDark,
        ),
        body: const AddNotificationBody(),
    );
  }
}
