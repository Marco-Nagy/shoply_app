import 'package:flutter/material.dart';
import 'package:shoply/core/styles/icons/dark_icons.dart';
import 'package:shoply/core/styles/icons/light_icons.dart';

class AppIconTheme extends ThemeExtension<AppIconTheme> {
  AppIconTheme({required this.notification});

  final String notification;

  @override
  ThemeExtension<AppIconTheme> copyWith() {
    return AppIconTheme(notification: notification);
  }

  @override
  ThemeExtension<AppIconTheme> lerp(
      covariant ThemeExtension<AppIconTheme>? other, double t,) {
    if (other is! AppIconTheme) {
      return this;
    } else {
      return AppIconTheme(notification: notification);
    }
  }

  static AppIconTheme dark = AppIconTheme(
    notification: AppIcons.notifications,
  );
  static AppIconTheme light = AppIconTheme(
    notification: LightIcons.notifications,
  );
}
