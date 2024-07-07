import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/core/app/service_locator/injection_container.dart';
import 'package:shoply/core/routes/base_routes.dart';
import 'package:shoply/core/utils/screens/under_build_screen.dart';
import 'package:shoply/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:shoply/features/auth/presentation/screens/login_screen.dart';
import 'package:shoply/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:shoply/features/files/presentation/cubit/file_cubit.dart';
import 'package:shoply/features/admin/home_admin_screen.dart';
import 'package:shoply/features/home_customer_screen.dart';

class AppRoutes {
  static const String login = '/';
  static const String signUp = 'signUp';
  static const String homeAdmin = 'homeAdmin';
  static const String homeCustomer = 'homeCustomer';

  static Route<void> onGenerateRoute(RouteSettings settings) {
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
          page: const HomeCustomerScreen(),
        );
      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
