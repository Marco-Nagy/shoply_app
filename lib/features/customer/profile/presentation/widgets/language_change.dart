import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoply/core/app/app_cubit/app_cubit.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/helpers/extension/navigations.dart';
import 'package:shoply/core/localization/app_localizations.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/styles/app_images.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/widgets/custom_dialogs.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';

class LanguageChange extends StatelessWidget {
  const LanguageChange({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<AppCubit>();
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SvgPicture.asset(
                AppImages.language,
                color: context.colors.textColor,
              ),
              SizedBox(
                width: 8.w,
              ),
              TextApp(
                text: context.translate(LangKeys.languageTilte),
                style: MyFonts.styleMedium500_18
                    .copyWith(color: context.colors.textColor),
              ),
              const Spacer(),
              //* Language Buttons
              InkWell(
                onTap: () {
                  //* change language Dialog
                  CustomDialog.twoButtonDialog(
                    context: context,
                    textBody: context.translate(LangKeys.changeToTheLanguage),
                    textButton1: context.translate(LangKeys.sure),
                    textButton2: context.translate(LangKeys.cancel),
                    onPressed: () {
                      selectLanguagesButton(
                        context: context,
                        cubit: cubit,
                      );
                    },
                    isLoading: false,
                  );
                },
                child: Row(
                  children: [
                    TextApp(
                      text: context.translate(
                        LangKeys.langCode,
                      ),
                      style: MyFonts.styleMedium500_14
                          .copyWith(color: context.colors.textColor),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: context.colors.textColor,
                      size: 15,
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  void selectLanguagesButton(
      {required BuildContext context, required AppCubit cubit}) {
    if (AppLocalizations.of(context)!.isEnLocale) {
      cubit.toArabic();
    }
    else {
      cubit.toEnglish();
    }
    context.pop();
  }
}
