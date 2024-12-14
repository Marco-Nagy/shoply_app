import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/helpers/extension/navigations.dart';
import 'package:shoply/core/styles/icons/app_animated_icons.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/widgets/app_animated_icon.dart';
import 'package:shoply/core/utils/widgets/buttons/custom_back_button.dart';
import 'package:shoply/core/utils/widgets/buttons/custom_linear_button.dart';
import 'package:shoply/features/customer/home/presentation/bloc/home_bloc.dart';
import 'package:shoply/features/customer/home/presentation/widgets/products/home_products_list.dart';
import 'package:shoply/features/customer/main/presentation/widgets/main_customer_app_bar.dart';

class ProductsPerCategoriesScreen extends StatefulWidget {
  const ProductsPerCategoriesScreen({super.key, required this.categoryInfo});

  final ({
    String categoryId,
    String categoryName,
  }) categoryInfo;

  @override
  State<ProductsPerCategoriesScreen> createState() => _ProductsPerCategoriesScreenState();
}

class _ProductsPerCategoriesScreenState extends State<ProductsPerCategoriesScreen> with SingleTickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    context.read<HomeBloc>().add(HomeEvent.getHomeProductListPerCategory(categoryId: widget.categoryInfo.categoryId));

    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainCustomerAppBar(
        leadingButton:  const CustomBackButton(),
        title: widget.categoryInfo.categoryName,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<HomeBloc>()
            .add( HomeEvent.getHomeProductListPerCategory(categoryId: widget.categoryInfo.categoryId))

          ;
        },
        child: const CustomScrollView(
          slivers: [

            //* Products
            SliverToBoxAdapter(
              child:   Center(child: HomeProductsList( )),
            ),


          ],
        ),
      ),
    );
  }
}
