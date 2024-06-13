import 'package:flutter/material.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle(
      {required this.text, required this.description, super.key});

  final String text;
  final String description;

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 400,
      child: Column(
        children: [
          TextApp(
            text: text,
            style: MyFonts.styleBold700_24.copyWith(
              color: context.colors.textColor,
            ),
          ),
          verticalSpacing(10),
          TextApp(
            text: description,
            style: MyFonts.styleMedium500_14.copyWith(
              color: context.colors.textColor,
            ),
          ),
        ],
      ),
    );
  }
}
