import 'package:flutter/material.dart';
import 'package:shoply/core/styles/colors/dark_colors.dart';
import 'package:shoply/core/styles/colors/light_colors.dart';

class AppColorTheme extends ThemeExtension<AppColorTheme> {
  const AppColorTheme({
    required this.mainColor,
    required this.bluePinkDark,
    required this.bluePinkLight,
    required this.textColor,
    required this.textFormBorder,
    required this.navBarbg,
    required this.navBarSelectedTab,
    required this.containerShadow1,
    required this.containerShadow2,
    required this.containerLinear1,
    required this.containerLinear2,
    required this.white,
  });

  final Color mainColor;
  final Color bluePinkDark;
  final Color bluePinkLight;
  final Color textColor;
  final Color textFormBorder;
  final Color navBarbg;
  final Color navBarSelectedTab;
  final Color containerShadow1;
  final Color containerShadow2;
  final Color containerLinear1;
  final Color containerLinear2;
  final Color white;

  @override
  ThemeExtension<AppColorTheme> copyWith() {
    return AppColorTheme(
      mainColor: mainColor,
      bluePinkDark: bluePinkDark,
      bluePinkLight: bluePinkLight,
      textColor: textColor,
      textFormBorder: textFormBorder,
      navBarbg: navBarbg,
      navBarSelectedTab: navBarSelectedTab,
      containerShadow1: containerShadow1,
      containerShadow2: containerShadow2,
      containerLinear1: containerLinear1,
      containerLinear2: containerLinear2,
      white: white,
    );
  }

  @override
  ThemeExtension<AppColorTheme> lerp(
    covariant ThemeExtension<AppColorTheme> other,
    double t,
  ) {
    if (other is! AppColorTheme) {
      return this;
    } else {
      return AppColorTheme(
        mainColor: mainColor,
        bluePinkDark: bluePinkDark,
        bluePinkLight: bluePinkLight,
        textColor: textColor,
        textFormBorder: textFormBorder,
        navBarbg: navBarbg,
        navBarSelectedTab: navBarSelectedTab,
        containerShadow1: containerShadow1,
        containerShadow2: containerShadow2,
        containerLinear1: containerLinear1,
        containerLinear2: containerLinear2,
        white: white,
      );
    }
  }

  static const AppColorTheme dark = AppColorTheme(
    mainColor: DarkColors.mainColor,
    bluePinkDark: DarkColors.blueDark,
    bluePinkLight: DarkColors.blueLight,
    textColor: DarkColors.white,
    textFormBorder: DarkColors.blueLight,
    navBarbg: DarkColors.navBarDark,
    navBarSelectedTab: DarkColors.white,
    containerShadow1: DarkColors.black1,
    containerShadow2: DarkColors.black2,
    containerLinear1: DarkColors.black1,
    containerLinear2: DarkColors.black2,
    white: DarkColors.white,
  );
  static const AppColorTheme light = AppColorTheme(
    mainColor: LightColors.mainColor,
    bluePinkDark: LightColors.pinkDark,
    bluePinkLight: LightColors.pinkLight,
    textColor: LightColors.black,
    textFormBorder: LightColors.pinkLight,
    navBarbg: LightColors.mainColor,
    navBarSelectedTab: LightColors.pinkDark,
    containerShadow1: LightColors.white,
    containerShadow2: LightColors.white,
    containerLinear1: LightColors.pinkDark,
    containerLinear2: LightColors.pinkLight,
    white: LightColors.white,
  );
}
