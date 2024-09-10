import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/styles/icons/app_animated_icons.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/widgets/app_animated_icon.dart';
import 'package:shoply/core/utils/widgets/buttons/custom_linear_button.dart';
import 'package:shoply/features/customer/home/presentation/bloc/home_bloc.dart';
import 'package:shoply/features/customer/home/presentation/widgets/home_body.dart';
import 'package:shoply/features/customer/main/presentation/widgets/main_customer_app_bar.dart';
import 'package:shoply/features/search/presentation/screens/products_search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  AnimationController? _animatedSearchController;

  GlobalKey bottomNavigationKey = GlobalKey();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();

  scrollUp() {
    scrollController.animateTo(0,
        duration: const Duration(seconds: 1), curve: Curves.easeIn);
  }

  @override
  void initState() {
    super.initState();
    _animatedSearchController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _animatedSearchController!.dispose();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<HomeBloc>()..add(const HomeEvent.fetchHomeCategories())
        ..add(const HomeEvent.getHomeProductList()),
      child: Scaffold(
          key: _scaffoldKey,
          backgroundColor: Colors.transparent,
          endDrawerEnableOpenDragGesture: false,
          endDrawer: const ProductsSearch(),
          appBar: MainCustomerAppBar(
            title: context.translate(LangKeys.chooseProducts),
            actionButtons: [
              CustomFadeInLeft(
                duration: 400,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomLinearButton(
                    width: 55,
                    height: 55,
                    onTap: () {},
                    child: AppAnimatedIcon(
                      animationController: _animatedSearchController!,
                      iconAsset: AppAnimatedIcons.search,
                      backGroundColor: Colors.transparent,
                      size: 40,
                      onTap: () async {
                        Future.delayed(const Duration(milliseconds: 400)).then(
                          (value) {
                            _scaffoldKey.currentState?.openEndDrawer();
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: Stack(
            children: [
              HomeBody(
                scrollController: scrollController,
              ),
              CustomFadeInLeft(
                duration: 400,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: FloatingActionButton(
                      onPressed: scrollUp,
                      elevation: 12,
                      backgroundColor: context.colors.bluePinkLight,
                      child: const Icon(
                        Icons.arrow_upward_rounded,
                        size: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
