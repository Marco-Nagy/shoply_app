import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/Services/shared_preference/shared_pref_keys.dart';
import 'package:shoply/core/Services/shared_preference/shared_preference_helper.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/helpers/extension/navigations.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/routes/app_routes.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/message_type_const.dart';
import 'package:shoply/core/utils/widgets/custom_linear_button.dart';
import 'package:shoply/core/utils/widgets/snack_bar.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';
import 'package:shoply/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:shoply/features/auth/presentation/widget/header_title.dart';
import 'package:shoply/features/auth/presentation/widget/login/login_form_field.dart';
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
              child: BlocConsumer<AuthBloc, AuthState<dynamic>>(
                listener: (context, state) async {
                  await state.whenOrNull(
                    success: (data) async {
                      final userRole = SharedPrefHelper()
                          .getString(key: SharedPrefKeys.userRole);

                      if (userRole == 'admin') {
                        aweSnackBar(
                          title: 'Success',
                          msg: userRole.toString(),
                          context: context,
                          type: MessageTypeConst.success,
                        );
                      } else {
                        aweSnackBar(
                          title: 'Success',
                          msg: userRole.toString(),
                          context: context,
                          type: MessageTypeConst.help,
                        );
                      }
                    },
                    failure: (error) {
                      aweSnackBar(
                        title: 'Error',
                        msg: error,
                        context: context,
                        type: MessageTypeConst.failure,
                      );
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    loading: () {
                      return CustomLinearButton(
                        height: 50.h,
                        width: double.infinity,
                        child: CircularProgressIndicator(
                          color: context.colors.textColor,
                        ),
                        onTap: () {},
                      );
                    },
                    orElse: () {
                      return CustomLinearButton(
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
                        onTap: () async {
                          if (context
                              .read<AuthBloc>()
                              .formKye
                              .currentState!
                              .validate()) {
                            context
                                .read<AuthBloc>()
                                .add(const AuthEvent.login());
                          }
                        },
                      );
                    },
                  );
                },
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
