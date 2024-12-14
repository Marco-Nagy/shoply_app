import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/utils/admin_app_bar.dart';
import 'package:shoply/core/utils/loading/empty_screen.dart';
import 'package:shoply/features/admin/products/presentation/widget/product_loading.dart';
import 'package:shoply/features/admin/products/presentation/widget/products_list_admin.dart';
import 'package:shoply/features/filter/presentation/bloc/filter_bloc.dart';

class FilteredAdminProductsScreen extends StatelessWidget {
  const FilteredAdminProductsScreen({super.key, });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdminAppBar(
        title: 'Filtered Admin Products',
        isMain: false,
        backgroundColor: context.colors.bluePinkDark,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: Column(
          children: [
            Expanded(
              child: BlocBuilder<FilterBloc, FilterState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    getFilteredProductsListEmpty: () => const EmptyScreen(),
                    getFilteredProductsListFailure: (errorMessage) {
                      return AwesomeSnackbarContent(
                          title: 'Error',
                          message: errorMessage,
                          contentType: ContentType.failure);
                    },
                    filteredProductsLoading: () => const ProductLoading(),
                    getFilteredProductsListSuccess: (productList) {
                      print('Product list: $productList');
                      return ProductsListAdmin(productList: productList!);
                    },
                    orElse: () => const SizedBox.shrink(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
