import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';

class AdminAppBar extends StatelessWidget implements PreferredSizeWidget  {
  const AdminAppBar({
    super.key,
    required this.isMain,
    required this.backgroundColor,
    required this.title,
  });

  final bool isMain;
  final Color backgroundColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      surfaceTintColor: Colors.transparent,
      title: TextApp(
        text: title,
        style: MyFonts.styleBold700_18.copyWith(
          color: Colors.white,
        ),
      ),
      centerTitle: true,
      elevation: 0,
      leading:  IconButton(
        icon:  const Icon(Icons.menu_rounded, color: Colors.white,),
        onPressed: () {

          ZoomDrawer.of(context)!.toggle();
        },
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 50.h);
}