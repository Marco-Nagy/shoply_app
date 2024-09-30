import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/core/routes/base_routes.dart';
import 'package:shoply/core/utils/screens/custom_web_view.dart';
import 'package:shoply/core/utils/screens/under_build_screen.dart';
import 'package:shoply/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:shoply/features/auth/presentation/screens/login_screen.dart';
import 'package:shoply/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:shoply/features/customer/home/presentation/bloc/home_bloc.dart';
import 'package:shoply/features/customer/home/presentation/screen/product_details_screen.dart';
import 'package:shoply/features/customer/home/presentation/screen/products_per_categories_screen.dart';
import 'package:shoply/features/files/presentation/cubit/file_cubit.dart';
import 'package:shoply/features/admin/home_admin_screen.dart';
import 'package:shoply/features/customer/main/presentation/screens/main_screen.dart';

class AppRoutes {
  static const String login = '/';
  static const String signUp = 'signUp';
  static const String homeAdmin = 'homeAdmin';
  static const String homeCustomer = 'homeCustomer';
  static const String webView = 'webView';
  static const String productDetails = 'productDetails';
  static const String productsPerCategory = 'productsPerCategory';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case AppRoutes.login:
        return BaseRoute(page: BlocProvider(
          create: (context) => sl<AuthBloc>(),
          child: const LoginScreen(),
        ),);
      case AppRoutes.signUp:
        return BaseRoute(page: MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => sl<FileCubit>()),
            BlocProvider(create: (context) => sl<AuthBloc>()),
          ],
          child: const SignUpScreen(),
        ),
        );
      case AppRoutes.homeAdmin:
        return BaseRoute(
          page: const HomeAdminScreen(),
        );
      case AppRoutes.homeCustomer:
        return BaseRoute(
          page: const MainScreen(),
        );
      case AppRoutes.webView:
        return BaseRoute(
          page: CustomWebView(url: args! as String),
        );
      case AppRoutes.productDetails:
        return BaseRoute(
          page: BlocProvider(
            create: (context) => sl<HomeBloc>()..add(HomeEvent.getHomeProductDetails(productId: args as String)),
            child: ProductDetailsScreen(productId: args! as String),
          ),
        );
        case AppRoutes.productsPerCategory:
        return BaseRoute(
          page: BlocProvider(
            create: (context) => sl<HomeBloc>(),
            child: ProductsPerCategoriesScreen(categoryInfo: args! as ({String categoryId, String categoryName,})),
          ),
        );
      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
