import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/navigations.dart';
import 'package:shoply/core/helpers/extension/string_exetension.dart';
import 'package:shoply/core/routes/app_routes.dart';
import 'package:shoply/core/utils/loading/empty_screen.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/features/customer/home/presentation/bloc/home_bloc.dart';
import 'package:shoply/features/customer/home/presentation/widgets/categories/categories_shimmer.dart';
import 'package:shoply/features/customer/home/presentation/widgets/categories/category_item.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 136.h,
      padding: EdgeInsets.only(top: 20.h, right: 15.w, left: 15.w),
      child: BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previous, current) =>
            current is HomeCategorieLoading ||
            current is GetHomeCategoriesListSuccess ||
            current is GetHomeCategoriesListFailure ||
            current is GetHomeCategoriesListEmpty,
        builder: (context, state) {
          return state.maybeWhen(
            getHomeCategoriesListSuccess: (categoriesList) =>
                ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          context.pushNamed(AppRoutes.productsPerCategory,
                              arguments: (
                                categoryId: categoriesList[index].id,
                                categoryName: categoriesList[index].name,
                              ));
                        },
                        child: CategoryItem(
                          category: categoriesList[index],

                        ),
                      );
                    },
                    separatorBuilder: (context, index) => horizontalSpacing(15.w),
                itemCount: categoriesList.length),
            categoriesLoading: () => ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const CategoriesShimmer();
                },
                separatorBuilder: (context, index) => horizontalSpacing(15.w),
                itemCount: 7),
            getHomeCategoriesListEmpty: () => const EmptyScreen(),
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }
}
