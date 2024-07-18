import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';

class CustomLinearButton extends StatelessWidget {
  const CustomLinearButton(
      {required this.child,
      required this.onTap, super.key,
      this.height,
      this.width,});

  final Widget child;
  final VoidCallback onTap;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: context.colors.bluePinkLight.withOpacity(.3),
      child: Container(
        height: height ?? 50.h,
        width: width ?? 100.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [context.colors.bluePinkLight, context.colors.bluePinkDark],
            begin: const Alignment(0.46, -.89),
            end: const Alignment(-0.46, .89),
          ),
        ),
        child: Center(child: child),
      ),
    );
  }
}
