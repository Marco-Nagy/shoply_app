import 'package:flutter/material.dart';
import 'package:shoply/core/styles/colors/dark_colors.dart';
import 'package:shoply/core/styles/colors/light_colors.dart';

class AppColorTheme extends ThemeExtension<AppColorTheme> {
  const AppColorTheme({
    required this.mainColor,
  });

  final Color mainColor;

  @override
  ThemeExtension<AppColorTheme> copyWith() {
    return AppColorTheme(
      mainColor: mainColor,
    );
  }

  @override
  ThemeExtension<AppColorTheme> lerp(
      covariant ThemeExtension<AppColorTheme>? other, double t,) {
    if (other is! AppColorTheme) {
      return this;
    } else {
      return AppColorTheme(
        mainColor: mainColor,
      );
    }
  }

  static const AppColorTheme dark = AppColorTheme(mainColor: DarkColors.mainColor);
  static const AppColorTheme light = AppColorTheme(mainColor: LightColors.mainColor);
}
