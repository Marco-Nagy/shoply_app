import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/icons/app_animated_icons.dart';
import 'package:shoply/core/utils/admin_app_bar.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/widgets/app_animated_icon.dart';
import 'package:shoply/features/admin/products/presentation/bloc/admin_product_bloc.dart';
import 'package:shoply/features/admin/products/presentation/widget/add_products_body.dart';
import 'package:shoply/features/search/presentation/screens/products_search.dart';

class AddProductsScreen extends StatefulWidget {
  const AddProductsScreen({super.key});

  @override
  State<AddProductsScreen> createState() => _AddProductsScreenState();
}

class _AddProductsScreenState extends State<AddProductsScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _animatedSearchController;

  late Animation<Offset> _offsetAnimation;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _animatedSearchController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

  }

  void _toggleDrawer() {
    if (_controller.isDismissed) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _animatedSearchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
 endDrawerEnableOpenDragGesture: false,
      endDrawer: const ProductsSearch(),
      appBar: AdminAppBar(
        title: 'Add Products',
        isMain: false,
        backgroundColor: context.colors.bluePinkDark,
        actionButtons: [
          CustomFadeInLeft(
            duration: 400,
            child: AppAnimatedIcon(
              animationController: _animatedSearchController,
              iconAsset: AppAnimatedIcons.search,
              backGroundColor: context.colors.bluePinkDark,
              onTap: ()async {


                Future.delayed(const Duration(milliseconds: 400)).then(
                  (value) {
                    // _toggleDrawer();
                    _scaffoldKey.currentState?.openEndDrawer();                },
                );
              },
            ),
          ),
        ],
      ),
      body: BlocProvider(
        create: (context) => sl<AdminProductBloc>()
          ..add(
            const AdminProductEvent.getAdminProductList(),
          ),
        child: const AddProductsBody(),
      ),
    );
  }


}
