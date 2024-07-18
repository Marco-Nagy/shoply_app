import 'package:flutter/material.dart';
import 'package:flutter_swipe_action_cell/core/cell.dart';
import 'package:flutter_swipe_action_cell/core/controller.dart';
import 'package:shoply/core/styles/icons/dark_icons.dart';
import 'app_animated_icon.dart';

class CustomSwipeToAction extends StatefulWidget {
  const CustomSwipeToAction(
      {super.key,
      required this.index,
      required this.child,
      required this.onPressRightButton,
      this.onPressLeftButton,
      this.rightButton,
      this.leftButton, this.animatedRightButtonAsset, this.animatedLiftButtonAsset, this.leftButtonBackgroundColor, this.rightButtonBackgroundColor});

  final int index;
  final Widget child;
  final Widget? rightButton;
  final String? animatedRightButtonAsset;
  final String? animatedLiftButtonAsset;
  final Color? leftButtonBackgroundColor;
  final Color? rightButtonBackgroundColor;
  final Widget? leftButton;
  final VoidCallback? onPressRightButton;
  final VoidCallback? onPressLeftButton;

  @override
  _CustomSwipeToActionState createState() => _CustomSwipeToActionState();
}

class _CustomSwipeToActionState extends State<CustomSwipeToAction>
    with SingleTickerProviderStateMixin {
  SwipeActionController? controller;
  AnimationController? animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SwipeActionCell(
      controller: controller,
      index: widget.index,
      // Required!
      key: ValueKey([widget.index]),

      // Animation default value below
      // deleteAnimationDuration: 400,
      trailingActions: [
        SwipeAction(
            closeOnTap: true,
            content: Container(
              height: 70,
              width: 70,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: widget.rightButtonBackgroundColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child:widget.rightButton?? AppAnimatedIcon(
                size: 35,
                backGroundColor: widget.rightButtonBackgroundColor,
                animationController: animationController!,
                iconAsset: widget.animatedRightButtonAsset!,
                onTap: () => widget.onPressRightButton!(),
              ),
            ),
            color: Colors.transparent,
            onTap: (handler) async {
              await handler(true);
              widget.onPressRightButton!();
            }),
      ],
      leadingActions: [
        SwipeAction(
            widthSpace: 80,
            content: Container(
              height: 70,
              width: 70,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: widget.leftButtonBackgroundColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child:widget.leftButton?? AppAnimatedIcon(
                size: 35,
                backGroundColor: widget.leftButtonBackgroundColor,
                animationController: animationController!,
                iconAsset: widget.animatedLiftButtonAsset!,
                onTap: () => widget.onPressLeftButton!(),
              ),
            ),
            color: Colors.transparent,
            onTap: (handler) async {
              await handler(true);
              widget.onPressLeftButton!();
            }),
      ],
      child: widget.child,
    );
  }
}
