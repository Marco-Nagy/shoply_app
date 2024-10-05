import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/utils/widgets/buttons/custom_back_button.dart';
import 'package:shoply/features/customer/home/presentation/widgets/products/home_product_list_widget.dart';
import 'package:shoply/features/customer/home/presentation/widgets/products/products_shimmer.dart';
import 'package:shoply/features/customer/main/presentation/widgets/main_customer_app_bar.dart';
import 'package:shoply/features/filter/presentation/bloc/filter_bloc.dart';

class FilteredCustomerProductsScreen extends StatelessWidget {
  const FilteredCustomerProductsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainCustomerAppBar(
        leadingButton: CustomBackButton(),
        title: 'Filtered Customer Products',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: Column(
          children: [
            Expanded(
              child: BlocBuilder<FilterBloc, FilterState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    getFilteredProductsListFailure: (errorMessage) =>
                        AwesomeSnackbarContent(
                            title: 'Error',
                            message: errorMessage,
                            contentType: ContentType.failure),
                    getFilteredProductsListSuccess: (productList) =>
                        SingleChildScrollView(child: HomeProductListWidget(productList: productList!)),
                    filteredProductsLoading: () => const ProductShimmer(),
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
