import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/styles/icons/app_animated_icons.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/widgets/app_animated_icon.dart';
import 'package:vibration/vibration.dart';

class ProductActionButtons extends StatefulWidget {
  const ProductActionButtons({super.key});

  @override
  _ProductActionButtonsState createState() => _ProductActionButtonsState();
}

class _ProductActionButtonsState extends State<ProductActionButtons>
    with TickerProviderStateMixin {
  late AnimationController animationFavoriteController;
  late AnimationController animationShareController;

  @override
  void initState() {
    super.initState();
    animationFavoriteController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    animationShareController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
  }

  @override
  void dispose() {
    animationFavoriteController.dispose();
    animationShareController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.w),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomFadeInLeft(
            duration: 400,
            child: AppAnimatedIcon(
              size: 35,
              backGroundColor: Colors.transparent,
              animationController: animationFavoriteController,
              animationDuration: 500,
              animateTo: 1.5,
              iconAsset: AppAnimatedIcons.favorite,
              onTap: () async {
                Vibration.vibrate(
                    duration: 700, pattern: [50, 100, 50, 500]);
                Future.delayed(const Duration(milliseconds: 700)).whenComplete(() {

                },);
              },
            ),
          ),
          CustomFadeInLeft(
            duration: 400,
            child: AppAnimatedIcon(
              size: 35,
              animationDuration: 800,
              animateTo: 1.5,
              backGroundColor: Colors.transparent,
              animationController: animationShareController,
              iconAsset: AppAnimatedIcons.share,
              onTap: () async {
                Vibration.vibrate(
                    duration: 700, pattern: [50, 100, 50, 500]);
                Future.delayed(const Duration(milliseconds: 700)).whenComplete(() {

                },);
              },
            ),
          ),

      ],),
    );
  }
}
