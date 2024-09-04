import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/message_type_const.dart';
import 'package:shoply/core/utils/widgets/snack_bar.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';
import 'package:shoply/features/customer/profile/presentation/bloc/profile_bloc.dart';
import 'package:shoply/features/customer/profile/presentation/widgets/language_change.dart';
import 'package:shoply/features/customer/profile/presentation/widgets/user_profile_info.dart';
import 'package:shoply/features/customer/profile/presentation/widgets/user_profile_shimmer.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(

        children: [
          BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              return state.when(loading: () => const UserProfileShimmer(), success: (userInfo) {
                return UserProfileInfo(userInfo: userInfo,);
              }, error: (errorMessage) {
                return aweSnackBar(
                    title: 'Failed to load',
                    msg: errorMessage, context: context, type: MessageTypeConst.failure);
              },);
            },
          ),
          verticalSpacing(20),
          Align(
            alignment: Alignment.topLeft,
            child: TextApp(text: context.translate(LangKeys.applicationFeatures),
            textAlign: TextAlign.start,
            style: MyFonts.styleSemiBold600_18.copyWith(color: context.colors.textColor)),
          ),
          verticalSpacing(20.h),
          const CustomFadeInRight(duration: 400, child: LanguageChange()),

        ],
      ),
    );
  }
}
