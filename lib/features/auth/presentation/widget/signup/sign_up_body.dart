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
import 'package:shoply/features/auth/presentation/widget/header_title.dart';
import 'package:shoply/features/auth/presentation/widget/login/login_form_field.dart';
import 'package:shoply/features/auth/presentation/widget/signup/sign_up_form_field.dart';
import 'package:shoply/features/auth/presentation/widget/signup/user_avatar_image.dart';
import 'package:shoply/features/auth/presentation/widget/switch_buttons.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

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
            //? SignUp welcome info
            HeaderTitle(
              text: context.translate(LangKeys.signUp),
              description: context.translate(LangKeys.signUpWelcome),
            ),
            verticalSpacing(10),
            const UserAvatarImage(),
            verticalSpacing(30),
            //? SignUp form
            const SignUpFormField(),
            verticalSpacing(30),
            //? SignUp button
            CustomFadeInRight(
              duration: 400,
              child: CustomLinearButton(
                height: 50.h,
                width: double.infinity,
                child: TextApp(
                  text: context.translate(
                    LangKeys.signUp,
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
                    AppRoutes.login,
                  );
                },
                child: TextApp(
                  text: context.translate(
                    LangKeys.youHaveAccount,
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
