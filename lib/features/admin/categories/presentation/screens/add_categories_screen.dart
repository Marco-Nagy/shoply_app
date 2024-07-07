import 'package:flutter/material.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/utils/admin_app_bar.dart';

class AddCategoriesScreen extends StatelessWidget {
  const AddCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdminAppBar(
        title: 'Add Categories',
        isMain: true,
        backgroundColor: context.colors.bluePinkDark,
      ),
      body: const Center(
        child: Text('Add Categories'),
      ),
    );
  }
}
