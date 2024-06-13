import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/helpers/extension/navigations.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/routes/app_routes.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/widgets/custom_linear_button.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';
import 'package:shoply/features/auth/presentation/widget/login/login_form_field.dart';
import 'package:shoply/features/auth/presentation/widget/header_title.dart';
import 'package:shoply/features/auth/presentation/widget/switch_buttons.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            //? dark light mode and language
            const SwitchButtons(),
            verticalSpacing(50),
            //? login welcome info
            HeaderTitle(
              text: context.translate(LangKeys.login),
              description: context.translate(LangKeys.welcome),
            ),
            verticalSpacing(30),
            //? login form
            const LoginFormField(),
            verticalSpacing(30),
            //? login button
            CustomFadeInRight(
              duration: 400,
              child: CustomLinearButton(
                height: 50.h,
                width: double.infinity,
                child: TextApp(
                  text: context.translate(
                    LangKeys.login,
                  ),
                  style: MyFonts.styleBold700_18.copyWith(
                    color: context.colors.textColor,
                  ),
                ),
                onTap: () {},
              ),
            ),
            verticalSpacing(30),
            //? go to sign up screen
            CustomFadeInDown(
              duration: 400,
              child: TextButton(
                onPressed: () {
                  context.pushReplacementNamed(
                    AppRoutes.signUp,
                  );
                },
                child: TextApp(
                  text: context.translate(
                    LangKeys.createAccount,
                  ),
                  style: MyFonts.styleBold700_16.copyWith(
                    color: context.colors.bluePinkLight,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
