import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:shoply/core/helpers/extension/mediaQueryValues.dart';
import 'package:shoply/core/utils/loading/empty_screen.dart';
import 'package:shoply/features/customer/home/presentation/bloc/home_bloc.dart';
import 'package:shoply/features/customer/home/presentation/widgets/products/home_product_item.dart';
import 'package:shoply/features/customer/home/presentation/widgets/products/products_shimmer.dart';

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
              getHomeProductList(productList, context),
          getHomeProductListPerCategorySuccess: (productList) =>
              getHomeProductList(productList, context),
          productsLoading: () {
            return   const ProductShimmer();
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  getHomeProductList(productList, BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: productList!.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, //Number of cloums
        crossAxisSpacing: 8, // Spacing between colums
        mainAxisSpacing: 1, //Spacing between rows
        childAspectRatio: 165 / 250,
      ),
      itemBuilder: (context, index) {
        return HomeProductItem(
          product: productList[index],
        );
      },
    );
  }
}
