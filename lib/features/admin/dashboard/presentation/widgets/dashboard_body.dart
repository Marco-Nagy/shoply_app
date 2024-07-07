import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/styles/app_images.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/features/admin/dashboard/presentation/widgets/dashboard_container.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: RefreshIndicator(
        onRefresh: () async {},
        child: ListView(
          children:  [
            //? Products
            const DashboardContainer(
                title: 'Products',
                value: '0',
                image: AppImages.products,
                isLoading: false),
            verticalSpacing(30.h),
            //? Categories
            const DashboardContainer(
                title: 'Categories',
                value: '0',
                image: AppImages.categories,
                isLoading: false),
            verticalSpacing(30.h),

            //? Users
            const DashboardContainer(
                title: 'Users',
                value: '0',
                image: AppImages.users,
                isLoading: false),
          ],
        ),
      ),
    );
  }
}
