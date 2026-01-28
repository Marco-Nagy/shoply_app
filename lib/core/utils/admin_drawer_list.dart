import 'package:flutter/material.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/widgets/custom_dialogs.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';
import 'package:shoply/features/admin/categories/presentation/screens/add_categories_screen.dart';
import 'package:shoply/features/admin/notifications/presentation/screens/add_notification_screen.dart';
import 'package:shoply/features/admin/products/presentation/screens/add_products_screen.dart';
import 'package:shoply/features/admin/dashboard/presentation/screens/dashboard_screen.dart';
import 'package:shoply/features/profile/presentation/screen/profile_screen.dart';

import '../../features/admin/users/presentation/screens/users_screen.dart';
import 'app_logout.dart';

List<DrawerItemModel> adminDrawerList(BuildContext context) {
  return <DrawerItemModel>[
    DrawerItemModel(
      icon: const Icon(Icons.person, color: Colors.white),
      title: TextApp(
        text: context.translate(LangKeys.profile),
        style: MyFonts.styleBold700_18.copyWith(color: Colors.white),
      ),
      screen: const ProfileScreen(),
    ),
    DrawerItemModel(
      icon: const Icon(Icons.dashboard_rounded, color: Colors.white),
      title: TextApp(
        text: context.translate(LangKeys.dashboard),
        style: MyFonts.styleBold700_18.copyWith(color: Colors.white),
      ),
      screen: const DashboardScreen(),
    ),
    DrawerItemModel(
      icon: const Icon(Icons.category_rounded, color: Colors.white),
      title: TextApp(
        text: context.translate(LangKeys.categories),
        style: MyFonts.styleBold700_18.copyWith(color: Colors.white),
      ),
      screen: const AddCategoriesScreen(),
    ),
    DrawerItemModel(
      icon: const Icon(Icons.production_quantity_limits_rounded,
          color: Colors.white),
      title: TextApp(
        text: context.translate(LangKeys.products),
        style: MyFonts.styleBold700_18.copyWith(color: Colors.white),
      ),
      screen: const AddProductsScreen(),
    ),
    DrawerItemModel(
      icon: const Icon(Icons.people_alt_rounded, color: Colors.white),
      title: TextApp(
        text: context.translate(LangKeys.users),
        style: MyFonts.styleBold700_18.copyWith(color: Colors.white),
      ),
      screen: const UsersScreen(),
    ),
    DrawerItemModel(
      icon: const Icon(Icons.notifications_active_rounded, color: Colors.white),
      title: TextApp(
        text: context.translate(LangKeys.notifications),
        style: MyFonts.styleBold700_18.copyWith(color: Colors.white),
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
            textBody: context.translate(LangKeys.logOutFromApp),
            textButton1: context.translate(LangKeys.yes),
            textButton2: context.translate(LangKeys.no),
            isLoading: false,
            onPressed: () async {
              await AppLogout().logout();
            },
          );
        },
        child: Text(
          context.translate(LangKeys.logOut),
          style: MyFonts.styleBold700_18.copyWith(color: Colors.white),
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
