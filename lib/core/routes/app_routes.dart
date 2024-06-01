import 'package:flutter/cupertino.dart';
import 'package:shoply/core/routes/base_routes.dart';
import 'package:shoply/core/utils/screens/under_build_screen.dart';
import 'package:shoply/page_one.dart';
import 'package:shoply/page_two.dart';

class AppRoutes {
  static const String one = '/';
  static const String two = 'two';
  static Route<void> onGenerateRoute(RouteSettings settings){
    switch (settings.name) {
      case AppRoutes.one:
        return BaseRoute(page: const PageOne());
      case AppRoutes.two:
        return  BaseRoute(page: const PageTwo());
      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
