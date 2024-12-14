import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/utils/admin_app_bar.dart';
import 'package:shoply/features/admin/dashboard/presentation/cubit/dashboard_bloc.dart';

import '../../../../../core/app/di/injection_container.dart';
import '../widgets/dashboard_body.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdminAppBar(
        title: 'Dashboard',
        isMain: true,
        backgroundColor: context.colors.bluePinkDark,
      ),
      body: BlocProvider(
          create: (context) => sl<DashboardBloc>()
            ..add(const DashboardEvent.getProductsEvent())
            ..add(const DashboardEvent.getCategoriesEvent())
            ..add(const DashboardEvent.getUsersEvent()),
          child: const DashboardBody()),
    );
  }
}
