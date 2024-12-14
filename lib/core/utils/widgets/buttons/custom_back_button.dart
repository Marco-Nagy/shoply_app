import 'package:flutter/material.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/helpers/extension/navigations.dart';
import 'package:shoply/core/styles/icons/app_animated_icons.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/widgets/app_animated_icon.dart';

import 'custom_linear_button.dart';

class CustomBackButton extends StatefulWidget {
  const CustomBackButton({super.key});

  @override
  _CustomBackButtonState createState() => _CustomBackButtonState();
}

class _CustomBackButtonState extends State<CustomBackButton>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  CustomFadeInLeft(
      duration: 400,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: CustomLinearButton(
          width: 55,
          height: 55,
          onTap: () {},
          child: AppAnimatedIcon(
            animationController: _controller!,
            iconAsset: AppAnimatedIcons.backArrow,
            backGroundColor: Colors.transparent,
            iconColor: context.colors.white,
            size: 40,
            onTap: () async {
              Future.delayed(const Duration(milliseconds: 400))
                  .then(
                    (value) {
                  context.pop();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
