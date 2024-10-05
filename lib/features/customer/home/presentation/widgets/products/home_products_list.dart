import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/core/utils/loading/empty_screen.dart';
import 'package:shoply/features/customer/home/presentation/bloc/home_bloc.dart';
import 'package:shoply/features/customer/home/presentation/widgets/products/products_shimmer.dart';

import 'home_product_list_widget.dart';

class HomeProductsList extends StatelessWidget {
  const HomeProductsList({super.key, });



  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.maybeWhen(
          getHomeProductListEmpty: () => const EmptyScreen(),
          getHomeProductListPerCategoryEmpty: () => const EmptyScreen(),
          getHomeProductListFailure: (errorMessage) => AwesomeSnackbarContent(
              title: 'Error',
              message: errorMessage,
              contentType: ContentType.failure),
          getHomeProductListPerCategoryFailure: (errorMessage) => AwesomeSnackbarContent(
              title: 'Error',
              message: errorMessage,
              contentType: ContentType.failure),
          getHomeProductListSuccess: (productList) =>
              HomeProductListWidget(productList: productList),
          getHomeProductListPerCategorySuccess: (productList) =>
              HomeProductListWidget(productList: productList),
          productsLoading: () {
            return   const ProductShimmer();
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
