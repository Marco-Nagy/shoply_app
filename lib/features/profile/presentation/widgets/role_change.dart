import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/app/app_cubit/app_cubit.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/helpers/extension/navigations.dart';
import 'package:shoply/core/localization/app_localizations.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/routes/app_routes.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/widgets/custom_dialogs.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';
import 'package:shoply/features/profile/domain/entity/user_profile.dart';
import 'package:shoply/features/profile/presentation/bloc/profile_bloc.dart';

class RoleChange extends StatelessWidget {
  const RoleChange({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        final cubit = context.read<ProfileBloc>();
        // Safely access userInfo with null check
        if (cubit.userInfo == null) {
          return const SizedBox
              .shrink(); // Return empty widget if userInfo is null
        }
        final isBuyer = cubit.userInfo!.role == UserRole.costumer.name;
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                isBuyer ? Icons.person_outline : Icons.storefront_outlined,
                color: context.colors.textColor,
              ),
              SizedBox(
                width: 8.w,
              ),
              TextApp(
                text: context.translate(LangKeys.role),
                style: MyFonts.styleMedium500_18
                    .copyWith(color: context.colors.textColor),
              ),
              const Spacer(),
              //* Language Buttons
              InkWell(
                onTap: () {
                  cubit.add(const ChangeUserRoleEvent());
                  //* change language Dialog
                  CustomDialog.twoButtonDialog(
                    context: context,
                    textBody: context.translate(isBuyer
                        ? LangKeys.changeRoleToSeller
                        : LangKeys.changeRoleToBuyer),
                    textButton1: context.translate(LangKeys.sure),
                    textButton2: context.translate(LangKeys.cancel),
                    onPressed: () async {
                      debugPrint('Role: ${cubit.role}');
                      cubit.add(UpdateUserInfoEvent(UserProfile(
                        role: cubit.role,
                        uid: cubit.userInfo!.uid,
                        name: cubit.userInfo!.name,
                        email: cubit.userInfo!.email,
                        avatarUrl: cubit.userInfo!.avatarUrl,
                      )));
                      context.pushReplacementNamed(AppRoutes.login);
                    },
                    isLoading: true,
                  );
                },
                child: Row(
                  children: [
                    TextApp(
                      text: context.translate(
                        isBuyer ? LangKeys.seller : LangKeys.buyer,
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
    } else {
      cubit.toEnglish();
    }
    context.pop();
  }
}
