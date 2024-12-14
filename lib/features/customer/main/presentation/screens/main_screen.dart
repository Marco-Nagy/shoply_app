import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/core/helpers/enums/nav_bar_enum.dart';
import 'package:shoply/core/helpers/extension/mediaQueryValues.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/features/customer/cart/presentation/screen/cart_screen.dart';
import 'package:shoply/features/customer/favorits/presentation/screen/favorites_screen.dart';
import 'package:shoply/features/customer/home/presentation/screen/home_screen.dart';
import 'package:shoply/features/customer/main/presentation/cubit/main_cubit.dart';
import 'package:shoply/features/customer/main/presentation/widgets/main_bottom_nav_bar.dart';
import 'package:shoply/features/customer/notifications/presentation/screen/notifications_screen.dart';
import 'package:shoply/features/customer/profile/presentation/screen/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  AnimationController? _controller;
  AnimationController? _animatedSearchController;
  int currentPage = 0;

  GlobalKey bottomNavigationKey = GlobalKey();

  late Animation<Offset> _offsetAnimation;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _animatedSearchController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller!.dispose();
    _animatedSearchController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MainCubit>(),
      child: Scaffold(
        body: Container(
          width: context.width,
          constraints: const BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(context.assets.homeBackground!),
              fit: BoxFit.fill,
            ),
          ),

          child: Column(
            children: [
              BlocBuilder<MainCubit, MainState>(
                builder: (context, state) {
                  return Expanded(
                    child: toggleNavBarScreens(context),
                  );
                },
              ),
              const SizedBox(height: 8),
              const MainBottomNavBar(),
            ],
          ),
        ),
      ),
    );
  }

  toggleNavBarScreens(BuildContext context) {
    final navBarEnum = context
        .read<MainCubit>()
        .iconNavBar;
    switch (navBarEnum) {
      case NavBarEnum.cart:
        return const CartScreen();
      case NavBarEnum.home:
        return const HomeScreen();
      case NavBarEnum.notification:
        return const NotificationsScreen();
      case NavBarEnum.favorites:
        return const FavoritesScreen();
      case NavBarEnum.profile:
        return const ProfileScreen();
      default:
        const HomeScreen();
    }
  }
}
