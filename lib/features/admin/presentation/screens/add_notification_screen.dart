import 'package:flutter/material.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/features/admin/presentation/widgets/admin_app_bar.dart';

class AddNotificationScreen extends StatelessWidget {
  const AddNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdminAppBar(
        title: 'Add Notification',
        isMain: true,
        backgroundColor: context.colors.bluePinkDark,
      ),
      body: const Center(
        child: Text('Add Notification'),
      ),
    );
  }
}
