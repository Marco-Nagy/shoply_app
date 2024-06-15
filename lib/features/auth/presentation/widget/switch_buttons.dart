import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/core/app/app_cubit/app_cubit.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/localization/app_localizations.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/widgets/custom_linear_button.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';

class SwitchButtons extends StatelessWidget {
  const SwitchButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AppCubit>();
    return BlocBuilder<AppCubit, AppState>(
      bloc: cubit,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// lightDark theme Button
            CustomFadeInRight(
              duration: 400,
              child: CustomLinearButton(
                width: 50,
                onTap: cubit.changeTheme,
                child: cubit.isDark
                    ? FadeInDown(
                        delay: const Duration(milliseconds: 300),
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOutCubic,
                        from: 10,
                        child: Icon(
                          Icons.light_mode_outlined,
                          color: context.colors.textColor,
                        ),
                      )
                    : FadeInUp(
                        delay: const Duration(milliseconds: 300),
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOutCirc,
                        from: 10,
                        child: Icon(
                          Icons.dark_mode_rounded,
                          color: context.colors.textColor,
                        ),
                      ),
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
                onTap: () {
                  if(AppLocalizations.of(context)!.isEnLocale){
                    cubit.toArabic();
                  }else{
                    cubit.toEnglish();
                  }
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
