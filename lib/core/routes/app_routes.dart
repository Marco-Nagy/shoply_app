import 'package:flutter/cupertino.dart';
import 'package:shoply/core/routes/base_routes.dart';
import 'package:shoply/core/utils/screens/under_build_screen.dart';
import 'package:shoply/features/auth/presentation/screens/login_screen.dart';
import 'package:shoply/features/auth/presentation/screens/sign_up_screen.dart';

class AppRoutes {
  static const String login = '/';
  static const String signUp = 'signUp';
  static Route<void> onGenerateRoute(RouteSettings settings){
    switch (settings.name) {
      case AppRoutes.login:
        return BaseRoute(page:  const LoginScreen());
      case AppRoutes.signUp:
        return  BaseRoute(page: const SignUpScreen());
      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
