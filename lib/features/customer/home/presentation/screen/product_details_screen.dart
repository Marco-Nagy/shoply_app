import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/core/utils/widgets/buttons/custom_back_button.dart';
import 'package:shoply/features/customer/home/presentation/bloc/home_bloc.dart';
import 'package:shoply/features/customer/home/presentation/widgets/product_details/products_details_body.dart';
import 'package:shoply/features/customer/main/presentation/widgets/main_customer_app_bar.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.productId});

  final String productId;

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return  customerProductDetailsScreen();
  }

  Widget customerProductDetailsScreen() {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.maybeWhen(
          getHomeProductDetailsSuccess: (product) {
            return Scaffold(
              appBar: MainCustomerAppBar(
                leadingButton:  const CustomBackButton(),
                title: product.title ?? '',
              ),
              body: ProductsDetailsBody(product: product),
              // bottomNavigationBar: const AddToCartButton(),
            );
          },
          orElse: () => const SizedBox(),
        );
      },
    );
  }
  //
  // Widget adminProductDetailsScreen() {
  //   return BlocBuilder<AdminProductBloc, AdminProductState>(
  //     builder: (context, state) {
  //       return state.maybeWhen(
  //         getAdminProductDetailsSuccess: (product) {
  //           return Scaffold(
  //             appBar: AdminAppBar(
  //               title: product.title ?? '',
  //               isMain: true,
  //               backgroundColor: context.colors.bluePinkDark,
  //             ),
  //             body: ProductsDetailsBody(product: product),
  //             // bottomNavigationBar: const AddToCartButton(),
  //           );
  //         },
  //         orElse: () => const SizedBox(),
  //       );
  //     },
  //   );
  // }
}
