import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/features/customer/main/presentation/widgets/main_customer_app_bar.dart';
import 'package:shoply/features/customer/profile/presentation/bloc/profile_bloc.dart';
import 'package:shoply/features/customer/profile/presentation/widgets/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ProfileBloc>()..add(const ProfileEvent.getUserInfo()),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MainCustomerAppBar(
            title: 'Profile'),

        body: ProfileBody(),
      ),
    );
  }
}
