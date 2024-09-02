import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/message_type_const.dart';
import 'package:shoply/core/utils/widgets/snack_bar.dart';
import 'package:shoply/features/customer/profile/presentation/bloc/profile_bloc.dart';
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
          Row(
            children: [
              const Icon(Icons.location_on),
              const SizedBox(width: 8),
              Text('New York, USA', style: MyFonts.styleMedium500_16
                  .copyWith(color: context.colors.textColor),)
            ],
          ),
          const SizedBox(height: 16),
          Text('About Me', style: MyFonts.styleMedium500_16
              .copyWith(color: context.colors.textColor),),
          const SizedBox(height: 8),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempus, tortor sed pharetra pellentesque, justo velit ultrices nunc, vel auctor justo risus vel nunc.',
          ),
        ],
      ),
    );
  }
}
