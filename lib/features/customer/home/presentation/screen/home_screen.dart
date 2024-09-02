import 'package:flutter/material.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/styles/icons/app_animated_icons.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/widgets/app_animated_icon.dart';
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
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.transparent,
      endDrawerEnableOpenDragGesture: false,
      endDrawer: const ProductsSearch(),
      appBar: MainCustomerAppBar(
        title: context.translate(LangKeys.chooseProducts),
        actionButtons: [
          CustomFadeInLeft(
            duration: 400,
            child: AppAnimatedIcon(
              animationController: _animatedSearchController!,
              iconAsset: AppAnimatedIcons.search,
              backGroundColor: context.colors.mainColor,
              onTap: () async {
                Future.delayed(const Duration(milliseconds: 400)).then(
                      (value) {
                    _scaffoldKey.currentState?.openEndDrawer();
                  },
                );
              },
            ),
          ),
        ],
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to the Home Screen',
              style: MyFonts.styleBold700_18
                  .copyWith(color: context.colors.textColor),),

          ],
        ),
      ),
    );
  }
}
