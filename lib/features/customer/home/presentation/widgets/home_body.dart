import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/helpers/extension/navigations.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/loading/empty_screen.dart';
import 'package:shoply/core/utils/widgets/buttons/custom_button.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/features/admin/products/presentation/widget/product_loading.dart';
import 'package:shoply/features/customer/home/presentation/bloc/home_bloc.dart';
import 'package:shoply/features/customer/home/presentation/widgets/banners/banner_sliders.dart';
import 'package:shoply/features/customer/home/presentation/widgets/categories/categories_list.dart';
import 'package:shoply/features/customer/home/presentation/widgets/products/home_products_list.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key, required this.scrollController});
final ScrollController scrollController ;
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
        controller: scrollController,
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
    return context.read<HomeBloc>().loadMoreProducts? Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: CustomButton(
                height: 50.h,
                lastRadius: 10,
                threeRadius: 10,
                width: MediaQuery.of(context).size.width,
                backgroundColor: context.colors.bluePinkLight,
                textColor: Colors.black,
                text: context.translate(LangKeys.viewAll),
                onPressed: () {
                  // context.pushNamed(AppRoutes.productsViewAll);
                },
              ),
            ):const SizedBox.shrink();
  },
),
          ),
    
        ],
      ),
    );
  }
}
