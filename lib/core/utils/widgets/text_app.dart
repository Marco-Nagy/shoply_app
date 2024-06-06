import 'package:flutter/material.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';

class TextApp extends StatelessWidget {
  const TextApp({
    required this.text,
    super.key,
    this.style,
    this.overflow,
    this.maxLines,
    this.textAlign,
  });

  final String text;
  final TextStyle? style;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ??
          MyFonts.styleMedium500_14.copyWith(
            color: context.colors.textColor,
          ),
      overflow: overflow,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
