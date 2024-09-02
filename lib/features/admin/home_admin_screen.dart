import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/styles/app_images.dart';
import 'package:shoply/core/utils/admin_app_bar.dart';
import 'package:shoply/core/utils/admin_drawer_list.dart';

import 'dashboard/presentation/screens/dashboard_screen.dart';

class HomeAdminScreen extends StatefulWidget {
  const HomeAdminScreen({super.key});

  @override
  State<HomeAdminScreen> createState() => _HomeAdminScreenState();
}

class _HomeAdminScreenState extends State<HomeAdminScreen> {
  Widget screen = const DashboardScreen();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      style: DrawerStyle.defaultStyle,
      mainScreen:screen,
      menuScreen:  Builder(builder: (context) {
        return MenuAdminScreen(
          onPageChanged: (action) {
            setState(() {
              screen = action;
            });
            ZoomDrawer.of(context)!.close();
          },
        );
      }),
      borderRadius: 24.0,
      showShadow: true,
      angle: -12.0,
      drawerShadowsBackgroundColor:
          context.colors.mainColor.withOpacity(.6),
      menuBackgroundColor: context.colors.bluePinkDark,
      slideWidth: MediaQuery.of(context).size.width * .671,
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.bounceIn,
    );
  }
}

class MenuAdminScreen extends StatelessWidget {
  const MenuAdminScreen({super.key, required this.onPageChanged});

  final void Function(Widget) onPageChanged;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.colors.bluePinkDark,
        appBar: AdminAppBar(
          isMain: false,
          backgroundColor: context.colors.bluePinkDark,
          title: context.translate(LangKeys.appName),
        ),
        body: Column(
          children: [
            Column(
              children: adminDrawerList(context)
                  .map(( element) => ListTile(
                        leading: element.icon,
                        title: element.title,
                        onTap: () {
                          onPageChanged(element.screen);
                        },
                      ))
                  .toList(),
            ),
            SizedBox(
              height: 100,
              child: Transform.scale(
                origin: const Offset(-10, -60),
                scaleX: 3.8,
                scaleY: 4.5,
                child: Image.asset(AppImages.appImage,
                  fit: BoxFit.contain,),
              ),
            )
          ],
        ));
  }
}
