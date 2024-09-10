import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/utils/loading/empty_screen.dart';
import 'package:shoply/features/admin/products/data/model/get_products_list/get_all_products.dart';
import 'package:shoply/features/admin/products/presentation/widget/product_admin_item.dart';
import 'package:shoply/features/admin/products/presentation/widget/product_loading.dart';
import 'package:shoply/features/customer/home/presentation/bloc/home_bloc.dart';
import 'package:shoply/features/customer/home/presentation/widgets/products/home_product_item.dart';
import 'package:shoply/features/customer/home/presentation/widgets/products/products_shimmer.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeProductsList extends StatelessWidget {
  const HomeProductsList({super.key, });



  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.maybeWhen(
          getHomeProductListEmpty: () => const EmptyScreen(),
          getHomeProductListFailure: (errorMessage) {
            return AwesomeSnackbarContent(
                title: 'Error',
                message: errorMessage,
                contentType: ContentType.failure);
          },
          getHomeProductListSuccess: (productList) {
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
          },
          productsLoading: () {
            return   const ProductShimmer();
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
