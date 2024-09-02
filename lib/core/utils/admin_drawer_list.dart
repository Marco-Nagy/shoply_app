import 'package:flutter/material.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/widgets/custom_dialogs.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';
import 'package:shoply/features/admin/categories/presentation/screens/add_categories_screen.dart';
import 'package:shoply/features/admin/notifications/presentation/screens/add_notification_screen.dart';
import 'package:shoply/features/admin/products/presentation/screens/add_products_screen.dart';
import 'package:shoply/features/admin/dashboard/presentation/screens/dashboard_screen.dart';

import '../../features/admin/users/presentation/screens/users_screen.dart';
import 'app_logout.dart';

List<DrawerItemModel> adminDrawerList(BuildContext context) {
  return <DrawerItemModel>[
    DrawerItemModel(
      icon: const Icon(Icons.dashboard_rounded, color: Colors.white),
      title: TextApp(
        text: 'DashBoard',
        style:
            MyFonts.styleBold700_18.copyWith(color: Colors.white),
      ),
      screen: const DashboardScreen(),
    ),
    DrawerItemModel(
      icon: const Icon(Icons.category_rounded, color: Colors.white),
      title: TextApp(
        text: 'Categories',
        style:
            MyFonts.styleBold700_18.copyWith(color: Colors.white),
      ),
      screen: const AddCategoriesScreen(),
    ),
    DrawerItemModel(
      icon: const Icon(Icons.production_quantity_limits_rounded,
          color: Colors.white),
      title: TextApp(
        text: 'Products',
        style:
            MyFonts.styleBold700_18.copyWith(color: Colors.white),
      ),
      screen: const AddProductsScreen(),
    ),
    DrawerItemModel(
      icon: const Icon(Icons.people_alt_rounded, color: Colors.white),
      title: TextApp(
        text: 'Users',
        style:
            MyFonts.styleBold700_18.copyWith(color: Colors.white),
      ),
      screen: const UsersScreen(),
    ),
    DrawerItemModel(
      icon: const Icon(Icons.notifications_active_rounded,
          color: Colors.white),
      title: TextApp(
        text: 'Notifications',
        style:
            MyFonts.styleBold700_18.copyWith(color: Colors.white),
      ),
      screen: const AddNotificationsScreen(),
    ),
    DrawerItemModel(
      icon: const Icon(
        Icons.exit_to_app,
        color: Colors.white,
      ),
      title: GestureDetector(
        onTap: () {
          CustomDialog.twoButtonDialog(
            context: context,
            textBody: 'Do you want log out?',
            textButton1: 'Yes',
            textButton2: 'No',
            isLoading: false,
            onPressed: () async {
              await AppLogout().logout();
            },
          );
        },
        child: Text(
          'Logout',
          style:
              MyFonts.styleBold700_18.copyWith(color: Colors.white),
        ),
      ),
      screen: const SizedBox(),
    ),
  ];
}

class DrawerItemModel {
  final Icon icon;
  final Widget title;
  final Widget screen;

  const DrawerItemModel({
    required this.icon,
    required this.title,
    required this.screen,
  });
}
