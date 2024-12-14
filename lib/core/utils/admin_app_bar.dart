import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/widgets/buttons/custom_back_button.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';

class AdminAppBar extends StatelessWidget implements PreferredSizeWidget  {
  const AdminAppBar({
    super.key,
    required this.isMain,
    required this.backgroundColor,
    required this.title,
    this.actionButtons,

  });

  final bool isMain;
  final Color backgroundColor;
  final String title;
  final List<Widget>? actionButtons ;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      surfaceTintColor: Colors.transparent,
      title: CustomFadeInRight(
        duration: 400,
        child: TextApp(
          text: title,
          style: MyFonts.styleBold700_18.copyWith(
            color: Colors.white,
          ),
        ),
      ),
      centerTitle: true,
      elevation: 0,
      actions: actionButtons,
      leading:  isMain?IconButton(
        icon:  const Icon(Icons.menu_rounded, color: Colors.white,),
        onPressed: () {

          ZoomDrawer.of(context)!.toggle();
        },
      ): const CustomBackButton(),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 50.h);
}
