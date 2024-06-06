import 'package:flutter/material.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/helpers/extension/navigations.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/routes/app_routes.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';

import 'package:shoply/core/utils/widgets/app_animated_icon.dart';
import 'package:shoply/core/utils/widgets/custom_linear_button.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';


class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> with SingleTickerProviderStateMixin {
  late AnimationController _notificationController;

  @override
  void initState() {
    super.initState();
    _notificationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  @override
  void dispose() {
    super.dispose();
    _notificationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.translate(LangKeys.appName),
          style:
              MyFonts.styleBold700_18.copyWith(color: context.colors.textColor),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                context.pushNamed(AppRoutes.two);
              },
              child: Text(
                'Marco Nagy',
                style: MyFonts.styleBold700_18
                    .copyWith(color: context.colors.textColor),
              ),
            ),
            verticalSpacing(8),
            CustomLinearButton(
                child: Text(
                  'Login',
                  style: MyFonts.styleSemiBold600_14
                      .copyWith(color: context.colors.textColor),
                ),
                onTap: () {},),
            AppAnimatedIcon(
                animationController: _notificationController,
                iconAsset: context.icons.notification,
                onTap: () {
                  print('object Notification');
                },),
            // InkWell(
            //   onTap: () {
            //     setState(() {
            //    animateIcon(_notificationController);
            //     });
            //   },
            //   child: Container(
            //     color: context.colors.mainColor,
            //     height: 50,
            //     width: 50,
            //     child: ColorFiltered(
            //       colorFilter: ColorFilter.mode(
            //         context.colors.bluePinkLight,
            //         BlendMode.srcIn,
            //       ),
            //       child: Lottie.asset(
            //         filterQuality: FilterQuality.high,
            //         height: 49,
            //         width: 49,
            //         controller: _notificationController,
            //         context.icons.notification,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
