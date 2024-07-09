import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/styles/app_images.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';
import 'package:shoply/features/admin/dashboard/presentation/cubit/dashboard_bloc.dart';
import 'package:shoply/features/admin/dashboard/presentation/widgets/dashboard_container.dart';
import 'package:shoply/features/admin/dashboard/presentation/widgets/dashboard_container_loading.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: RefreshIndicator(
            onRefresh: () async {
              context.read<DashboardBloc>().add( const DashboardEvent.getProductsEvent());
               context.read<DashboardBloc>().add(const DashboardEvent.getCategoriesEvent());
               context.read<DashboardBloc>().add(const DashboardEvent.getUsersEvent());


            },
            child: ListView(
              children: [
                //? Products

                BlocBuilder<DashboardBloc, DashboardState>(
                  buildWhen: (previous, current) =>
                      current is LoadingState ||
                      current is SuccessProductsState ||
                      current is ErrorProductsState,
                  builder: (context, state) {
                    return state.maybeWhen(
                      loading: () => const DashboardContainerLoading(),
                      errorProducts: (error) => TextApp(text: error),
                      successProducts: (totalProducts) => DashboardContainer(
                        title: 'Products',
                        value: totalProducts,
                        image: AppImages.products,
                      ),
                      orElse: () => const SizedBox.shrink(),
                    );
                  },
                ),
                verticalSpacing(30.h),
                //? Categories
                BlocBuilder<DashboardBloc, DashboardState>(
                  buildWhen: (previous, current) =>
                      current is LoadingState ||
                      current is SuccessCategoriesState ||
                      current is ErrorCategoriesState,
                  builder: (context, state) {
                    return state.maybeWhen(
                      loading: () => const DashboardContainerLoading(),
                      errorCategories: (error) => TextApp(text: error),
                      successCategories: (totalCategories) =>
                          DashboardContainer(
                        title: 'Categories',
                        value: totalCategories,
                        image: AppImages.categories,
                      ),
                      orElse: () => const SizedBox.shrink(),
                    );
                  },
                ),
                verticalSpacing(30.h),

                //? Users
                BlocBuilder<DashboardBloc, DashboardState>(
                  buildWhen: (previous, current) =>
                      current is LoadingState ||
                      current is SuccessUsersState ||
                      current is ErrorUsersState,
                  builder: (context, state) {
                    return state.maybeWhen(
                      loading: () => const DashboardContainerLoading(),
                      errorUsers: (error) => TextApp(text: error),
                      successUsers: (totalUsers) => DashboardContainer(
                        title: 'Users',
                        value: totalUsers,
                        image: AppImages.users,
                      ),
                      orElse: () => const SizedBox.shrink(),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
