import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';

class MainCustomerAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const MainCustomerAppBar({
    super.key,
    required this.title,
    this.actionButtons,
    this.leadingButton,
  });

  final String title;
  final List<Widget>? actionButtons;
  final Widget? leadingButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: context.colors.mainColor,
      surfaceTintColor: Colors.transparent,
      leading: leadingButton,
      title: CustomFadeInRight(
        duration: 400,
        child: TextApp(
          text: title,
          style: MyFonts.styleBold700_18.copyWith(
            color: context.colors.textColor,
          ),
        ),
      ),
      centerTitle: false,
      elevation: 0,
      actions: actionButtons,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 70.h);
}
