import 'package:flutter/material.dart';
import 'package:shoply/core/Services/push_notifications/firebase_cloud_messaging.dart';
import 'package:shoply/core/Services/push_notifications/firebase_server_token.dart';
import 'package:shoply/core/app/env_variables.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/admin_app_bar.dart';

class AddNotificationScreen extends StatefulWidget {
  const AddNotificationScreen({super.key});

  @override
  State<AddNotificationScreen> createState() => _AddNotificationScreenState();
}

class _AddNotificationScreenState extends State<AddNotificationScreen> {
  String deviceToken = '';

  @override
  void initState() {
    getDeviceToken();
    super.initState();
  }

  getDeviceToken() async {
    deviceToken = await FirebaseCloudMessaging().getDeviceToken();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdminAppBar(
        title: 'Add Notification',
        isMain: true,
        backgroundColor: context.colors.bluePinkDark,
      ),
      body: Center(
        child: InkWell(
            onTap: () {
              FirebaseCloudMessaging().sendTopicNotification(
                  // token:EnvVariables.instance.testDeviceToken,
                topic: FirebaseCloudMessaging.subscribeKey,
                  title: 'Test Notification 1',
                  body: 'Test Notification  Body I Hope to Send Test Notification 1',

              );
            },
            child: Text('Send Notification',
            style: MyFonts.styleBold700_24.copyWith(color: context.colors.textColor),)),
      ),
    );
  }
}
