import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/core/Services/shared_preference/shared_pref_keys.dart';
import 'package:shoply/core/Services/shared_preference/shared_preference_helper.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/helpers/extension/navigations.dart';
import 'package:shoply/core/styles/icons/app_animated_icons.dart';
import 'package:shoply/core/utils/admin_app_bar.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/widgets/app_animated_icon.dart';
import 'package:shoply/core/utils/widgets/buttons/custom_linear_button.dart';
import 'package:shoply/features/admin/products/presentation/bloc/admin_product_bloc.dart';
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
    String isAdmin =
        SharedPrefHelper().getString(key: SharedPrefKeys.userRole).toString();
    return isAdmin == "admin"
        ? adminProductDetailsScreen()
        : customerProductDetailsScreen();
  }

  Widget customerProductDetailsScreen() {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.maybeWhen(
          getHomeProductDetailsSuccess: (product) {
            return Scaffold(
              appBar: MainCustomerAppBar(
                leadingButtons: CustomFadeInLeft(
                  duration: 400,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CustomLinearButton(
                      width: 55,
                      height: 55,
                      onTap: () {},
                      child: AppAnimatedIcon(
                        animationController: _controller!,
                        iconAsset: AppAnimatedIcons.backArrow,
                        backGroundColor: Colors.transparent,
                        iconColor: context.colors.white,
                        size: 40,
                        onTap: () async {
                          Future.delayed(const Duration(milliseconds: 400))
                              .then(
                            (value) {
                              context.pop();
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ),
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

  Widget adminProductDetailsScreen() {
    return BlocBuilder<AdminProductBloc, AdminProductState>(
      builder: (context, state) {
        return state.maybeWhen(
          getAdminProductDetailsSuccess: (product) {
            return Scaffold(
              appBar: AdminAppBar(
                title: product.title ?? '',
                isMain: true,
                backgroundColor: context.colors.bluePinkDark,
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
}
