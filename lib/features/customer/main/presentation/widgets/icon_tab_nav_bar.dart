import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/utils/widgets/app_animated_icon.dart';

class IconTabNavBar extends StatefulWidget {
  const IconTabNavBar({
    super.key,
    required this.iconAsset, required this.onTap, required this.isSelected,
  });

  final String iconAsset;
  final VoidCallback onTap;
  final   ValueNotifier<bool>  isSelected;

  @override
  _IconTabNavBarState createState() => _IconTabNavBarState();
}

class _IconTabNavBarState extends State<IconTabNavBar>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  ValueNotifier<bool> itemPressed = ValueNotifier(false);

  @override
  void initState() {
    setState(() {
    });

    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    super.initState();
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        ValueListenableBuilder(
          valueListenable: widget.isSelected,
          builder: (context, value, child) {
            return Visibility(
              visible: value,
              child: FadeInUp(
                duration: const Duration(milliseconds: 400),
                from: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(context.assets.bigNavBar!),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: AppAnimatedIcon(
            animationController: animationController!,
            iconAsset: widget.iconAsset,
            size: 30,
            iconColor: widget.isSelected.value?context.colors.white:Colors.grey,
            backGroundColor: Colors.transparent,
            onTap: widget.onTap,

          ),
        ),
      ],
    );
  }
}
