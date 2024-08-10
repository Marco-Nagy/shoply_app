import 'package:flutter/material.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';

class CustomLinearContainerAdmin extends StatelessWidget {
  const CustomLinearContainerAdmin({
    super.key,
    required this.width,
    required this.height,
    required this.child,
  });

  final double width;
  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),

        gradient: LinearGradient(
          colors: [
            context.colors.bluePinkLight.withOpacity(.08),
            context.colors.bluePinkLight.withOpacity(.08),
          ],
          begin: const Alignment(.36, .27),
          end: const Alignment(.64, .73),
        ),
        boxShadow: [
          BoxShadow(
            color: context.colors.bluePinkDark.withOpacity(0.3),
            offset: const Offset(0, 4),
            blurRadius: 8,
          ),
          BoxShadow(
            color: context.colors.bluePinkDark.withOpacity(0.3),
            offset: const Offset(0, 4),
            blurRadius: 2,
          ),
        ],
      ),
      child: child,
    );
  }
}
