import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';

class AppAnimatedIcon extends StatefulWidget {
  const AppAnimatedIcon({
    required this.animationController,
    required this.iconAsset,
    required this.onTap,
    super.key,
    this.iconColor,
    this.backGroundColor,
    this.size,
  });

  final AnimationController animationController;
  final String iconAsset;
  final VoidCallback onTap;
  final Color? iconColor;
  final Color? backGroundColor;
  final double? size;

  @override
  _AppAnimatedIconState createState() => _AppAnimatedIconState();
}

class _AppAnimatedIconState extends State<AppAnimatedIcon> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()async {
        widget.onTap();

        // _animateIcon(widget.animationController);
      },
      child: Container(
        color: widget.backGroundColor ?? context.colors.mainColor,
        height: widget.size ?? 50,
        width: widget.size ?? 50,
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
            widget.iconColor ?? context.colors.navBarSelectedTab,
            BlendMode.srcIn,
          ),
          child: Lottie.asset(
            filterQuality: FilterQuality.high,
            controller: widget.animationController,
            widget.iconAsset,
          ),
        ),
      ),
    );
  }

  dynamic _animateIcon(AnimationController animation) {
    if (animation.status == AnimationStatus.dismissed) {
      animation
        ..reset()
        ..animateTo(
          0.9,
          duration: const Duration(milliseconds: 400),
        );
    } else {
      animation
        ..reverseDuration = const Duration(milliseconds: 300)
        ..reverse();
    }
  }
}

