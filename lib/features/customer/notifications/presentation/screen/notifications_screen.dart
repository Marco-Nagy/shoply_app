import 'package:flutter/material.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/features/customer/main/presentation/widgets/main_customer_app_bar.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: const MainCustomerAppBar(
        title:'Notifications',),
      body: Center(
        child: Column(
          children: [
             Text('You have 3 unread notifications.',style: MyFonts.styleMedium500_16
                 .copyWith(color: context.colors.textColor),),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle notification click
                // For example, navigate to a notification detail screen
                // Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationDetailScreen()));
              },
              child: Text(
                'View all notifications',
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle notification creation
          // For example, navigate to a notification creation screen
          // Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationCreationScreen()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
