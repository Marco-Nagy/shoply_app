import 'package:flutter/material.dart';
import 'package:shoply/core/Services/push_notifications/firebase_cloud_messaging.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';

class HomeCustomerScreen extends StatelessWidget {
  const HomeCustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Customer',
            style: MyFonts.styleBold700_24
                .copyWith(color: context.colors.bluePinkLight)),
      ),
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: FirebaseCloudMessaging().isNotificationSubscribed,
          builder: (_, value, __) {
            return Row(
              children: [
                Text(value ? 'Subscribed' : 'UnSubscribed',
                    style: MyFonts.styleBold700_24
                        .copyWith(color: context.colors.bluePinkLight)),
                horizontalSpacing(20),
                Transform.scale(
                  scale: 1.5,
                  child: Switch.adaptive(
                    value: value,
                    activeTrackColor: context.colors.bluePinkLight,
                    inactiveTrackColor: Colors.grey[200],
                    onChanged: (value)async {
                      await FirebaseCloudMessaging().switchUserSubscribe();
                    },
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
