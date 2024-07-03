
import 'package:flutter/material.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.onPressed,
    required this.text,
    required this.width,
    required this.height,
    super.key,
    this.lastRadius,
    this.threeRadius,
    this.backgroundColor,
    this.textColor,
    this.textAlign,
    this.isLoading = false,
    this.loadingWidth = 30,
    this.loadingHeight = 30,
  });
  final VoidCallback onPressed;
  final String text;
  final double width;
  final double height;
  final double? threeRadius;
  final double? lastRadius;
  final Color? backgroundColor;
  final Color? textColor;
  final bool isLoading;
  final TextAlign? textAlign;
  final double? loadingWidth;
  final double? loadingHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(threeRadius ?? 20),
              topRight: Radius.circular(threeRadius ?? 20),
              bottomRight: Radius.circular(threeRadius ?? 20),
              bottomLeft: Radius.circular(lastRadius ?? 0),
            ),
          ),
        ),
        onPressed: onPressed,
        child: TextApp(
          style: MyFonts.styleMedium500_16.copyWith(
            color: textColor ?? Colors.white,

          ),
          text: text,
          textAlign: textAlign,
        ),
      ),
    );
  }
}
