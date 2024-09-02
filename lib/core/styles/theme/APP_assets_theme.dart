import 'package:flutter/material.dart';
import 'package:shoply/core/styles/app_images.dart';

class AppAssetsTheme extends ThemeExtension<AppAssetsTheme> {
  const AppAssetsTheme({
    required this.homeBackground,
    required this.bigNavBar,
  });

  final String? homeBackground;
  final String? bigNavBar;

  @override
  ThemeExtension<AppAssetsTheme> copyWith() {
    String? homeBackground;
    String? bigNavBar;
    return AppAssetsTheme(
      homeBackground: homeBackground,
      bigNavBar: bigNavBar,
    );
  }

  @override
  ThemeExtension<AppAssetsTheme> lerp(
      covariant ThemeExtension<AppAssetsTheme>? other, double t) {
    if (other is! AppAssetsTheme) {
      return this;
    } else {
      return AppAssetsTheme(
        bigNavBar: bigNavBar,
        homeBackground: homeBackground,
      );
    }
  }

  static const AppAssetsTheme dark = AppAssetsTheme(
    homeBackground: AppImages.homeBackgroundDark,
    bigNavBar: AppImages.bigNavBarDark,
  );
  static const AppAssetsTheme light = AppAssetsTheme(
    homeBackground: AppImages.homeBackgroundLight,
    bigNavBar: AppImages.bigNavBarLight,
  );
}
