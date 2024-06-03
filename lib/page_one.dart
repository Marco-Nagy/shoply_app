import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/helpers/extension/navigations.dart';
import 'package:shoply/core/routes/app_routes.dart';
import 'package:shoply/core/styles/icons/dark_icons.dart';
import 'package:shoply/core/styles/my_fonts.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

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
          'ماركو ناجى',
          style: MyFonts.arabicBold700_18,
        ),
      ),
      body: InkWell(
        onTap: () {
          context.pushNamed(AppRoutes.two);
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Marco Nagy',
                style: MyFonts.englishMedium500_16,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                 animateIcon(_notificationController);
                  });
                },
                child: LottieBuilder.asset(
                  height: 50,
                  width: 50,
                  controller: _notificationController,
                  context.icons.notification,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 animateIcon( AnimationController animation){
  if (animation.status ==
      AnimationStatus.dismissed) {
    animation.reset();
    animation.animateTo(0.9);
  } else {
    animation.reverse();
  }
}