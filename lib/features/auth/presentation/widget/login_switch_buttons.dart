import 'package:flutter/material.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/widgets/custom_linear_button.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';

class LoginSwitchButtons extends StatelessWidget {
  const LoginSwitchButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// lightDark theme Button
        CustomFadeInRight(
          duration: 400,
          child: CustomLinearButton(
            width: 50,
            child: Icon(
              Icons.light_mode_outlined,
              color: context.colors.textColor,
            ),
            onTap: () {},
          ),
        ),
        CustomFadeInLeft(
          duration: 400,
          child: CustomLinearButton(
            child: TextApp(
              text: context.translate(LangKeys.language),
              style: MyFonts.styleSemiBold600_16
                  .copyWith(color: context.colors.textColor),
            ),
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
