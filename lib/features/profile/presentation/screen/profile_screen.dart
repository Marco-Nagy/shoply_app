import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/core/app/di/injection.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/utils/admin_app_bar.dart';
import 'package:shoply/features/customer/main/presentation/widgets/main_customer_app_bar.dart';
import 'package:shoply/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:shoply/features/profile/presentation/widgets/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  ProfileBloc get profileBloc => sl<ProfileBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return profileBloc..add(const ProfileEvent.getUserInfo());
      },
      child: profileBloc.role == UserRole.costumer.name
          ? Scaffold(
              backgroundColor: Colors.transparent,
              appBar: MainCustomerAppBar(title: 'Profile'),
              body: ProfileBody(),
            )
          : Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AdminAppBar(
                title: 'Profile',
                isMain: true,
                backgroundColor: context.colors.bluePinkDark,
              ),
              body: ProfileBody(),
            ),
    );
  }
}
