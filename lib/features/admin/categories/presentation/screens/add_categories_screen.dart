import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/utils/admin_app_bar.dart';
import 'package:shoply/features/admin/categories/presentation/bloc/admin_categories_bloc.dart';
import 'package:shoply/features/admin/categories/presentation/widget/add_categories_body.dart';

class AddCategoriesScreen extends StatelessWidget {
  const AddCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      sl<AdminCategoriesBloc>()
        ..add(const AdminCategoriesEvent.fetchAdminCategories()),
      child: Scaffold(
        appBar: AdminAppBar(
          title: 'Add Categories',
          isMain: true,
          backgroundColor: context.colors.bluePinkDark,
        ),
        body: const AddCategoriesBody(),
      ),
    );
  }
}
