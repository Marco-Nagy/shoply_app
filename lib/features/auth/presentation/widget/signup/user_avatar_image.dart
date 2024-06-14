import 'package:flutter/material.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/app_images.dart';
import 'package:shoply/core/styles/icons/dark_icons.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/widgets/app_animated_icon.dart';

class UserAvatarImage extends StatefulWidget {
  const UserAvatarImage({super.key});

  @override
  _UserAvatarImageState createState() => _UserAvatarImageState();
}

class _UserAvatarImageState extends State<UserAvatarImage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 400,
      child: Stack(
        children: [
           const CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage:AssetImage(AppImages.userAvatar),
            radius: 40,
          ),
          Positioned(
            top: 10,
            left:20,
            child: AppAnimatedIcon(
              size: 45,
              backGroundColor: Colors.transparent,
              iconColor: context.colors.bluePinkLight,
              animationController: animationController,
              iconAsset: DarkIcons.cam,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
