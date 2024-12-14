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
import 'package:shoply/core/utils/widgets/buttons/custom_linear_button.dart';
import 'package:shoply/core/utils/widgets/snack_bar.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';
import 'package:shoply/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:shoply/features/auth/presentation/widget/header_title.dart';
import 'package:shoply/features/auth/presentation/widget/signup/sign_up_form_field.dart';
import 'package:shoply/features/auth/presentation/widget/signup/user_avatar_image.dart';
import 'package:shoply/features/auth/presentation/widget/switch_buttons.dart';
import 'package:shoply/features/files/presentation/cubit/file_cubit.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState<dynamic>>(
      listener: (context, state) async {
        await state.whenOrNull(
          success: (data) async {
            final userRole = SharedPrefHelper()
                .getString(key: SharedPrefKeys.userRole);

            if (userRole == 'admin') {
              await Navigator.of(context).pushReplacementNamed(
                AppRoutes.homeAdmin,
                arguments: data,
              );
              await  aweSnackBar(
                title: 'Success',
                msg: context.translate(LangKeys.loggedSuccessfully),
                context: context,
                type: MessageTypeConst.success,
              );
            } else {
              await Navigator.of(context).pushReplacementNamed(
                AppRoutes.homeCustomer,
                arguments: data,
              );
              await  aweSnackBar(
                title: 'Success',
                msg:context.translate(LangKeys.loggedSuccessfully),
                context: context,
                type: MessageTypeConst.help,
              );
            }
          },
          failure: (error) {
            aweSnackBar(
              title: 'Error',
              msg: context.translate(LangKeys.loggedError),
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
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //? dark light mode and language
                    const SwitchButtons(),
                    verticalSpacing(20),
                    //? SignUp welcome info
                    HeaderTitle(
                      text: context.translate(LangKeys.signUp),
                      description: context.translate(LangKeys.signUpWelcome),
                    ),
                    verticalSpacing(10),
                    const UserAvatarImage(),
                    verticalSpacing(20),
                    //? SignUp form
                    const SignUpFormField(),
                    verticalSpacing(15),
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
                        onTap: () {
                          final authBloc = context.read<AuthBloc>();
                          final fileCubit = context.read<FileCubit>();

                          if (!authBloc.formKye.currentState!.validate()) {
                            return;
                          } else if (fileCubit.getImageUrl.isEmpty) {
                            aweSnackBar(
                              msg: context.translate(LangKeys.validPickImage),
                              title: 'Empty Image',
                              context: context,
                              type: MessageTypeConst.failure,
                            );
                          } else {
                            authBloc.add(
                              AuthEvent.signUp(
                                imgUrl: fileCubit.getImageUrl,
                              ),
                            );
                          }
                        },
                      ),
                    ),
                    verticalSpacing(15),
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
          },
        );
      },
    );
  }
}
