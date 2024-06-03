import 'package:flutter/material.dart';
import 'package:shoply/core/styles/colors/dark_colors.dart';
import 'package:shoply/core/styles/colors/light_colors.dart';
import 'package:shoply/core/styles/theme/app_color_theme.dart';
import 'package:shoply/core/styles/theme/app_icon_theme.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: LightColors.mainColor,
  extensions: <ThemeExtension<dynamic>>[
    AppColorTheme.light,
    AppIconTheme.light,
  ],
  useMaterial3: true,
);

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: DarkColors.mainColor,
  extensions: <ThemeExtension<dynamic>>[AppColorTheme.dark, AppIconTheme.dark],
  useMaterial3: true,
);
