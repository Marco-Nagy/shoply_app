import 'package:flutter/material.dart';
import 'package:shoply/core/app/env_variables.dart';


class AppConfig extends InheritedWidget {
   const AppConfig({
    required this.appEnvironment,
    required this.appName,
    required this.description,
    required this.baseUrl,
    required this.child,
    super.key,
  }) : super(child: child);
  final EnvTypeEnum appEnvironment;
  final String appName;
  final String description;
  final String baseUrl;
  @override
  final Widget child;

  static AppConfig? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }


  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
