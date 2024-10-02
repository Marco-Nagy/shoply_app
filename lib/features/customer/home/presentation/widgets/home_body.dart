import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/core/helpers/extension/mediaQueryValues.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/features/customer/home/presentation/bloc/home_bloc.dart';
import 'package:shoply/features/customer/home/presentation/widgets/banners/banner_sliders.dart';
import 'package:shoply/features/customer/home/presentation/widgets/categories/categories_list.dart';
import 'package:shoply/features/customer/home/presentation/widgets/products/home_products_list.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key, required this.scrollController});
final ScrollController scrollController ;

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  void initState() {
    super.initState();

    widget.scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_onScroll); // Remove listener to avoid memory leaks
    widget.scrollController.dispose();
    super.dispose();
  }
  void _onScroll() {
      context.read<HomeBloc>().handlePagination(
        scrollController: widget.scrollController,
        loadMorePosition: context.height * 0.1,
      );
  }
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<HomeBloc>()
          ..add(const HomeEvent.fetchHomeCategories())
          ..add(const HomeEvent.getHomeProductList())
        ;
      },
      child: CustomScrollView(
        controller: widget.scrollController,
        slivers: [
          //* Banners
          const SliverToBoxAdapter(child: BannerSliders()),
          //* Categories
          const SliverToBoxAdapter(child: CategoriesList()),
          SliverToBoxAdapter(
            child: verticalSpacing( 20),
          ),
          //* Products
           const SliverToBoxAdapter(
            child:   Center(child: HomeProductsList( )),
          ),

          SliverToBoxAdapter(
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return context.read<HomeBloc>().loadMoreProducts
                    ? SizedBox(
                  width: 60,
                      child: Center(
                        child: CircularProgressIndicator(
                            color: context.colors.bluePinkLight,
                          ),
                      ),
                    )
                    : const SizedBox();
              },
            ),
          ),
        ],
      ),
    );
  }
}
