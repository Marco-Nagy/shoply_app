import 'package:flutter/material.dart';
import 'package:shoply/core/styles/colors/dark_colors.dart';
import 'package:shoply/core/styles/colors/light_colors.dart';
import 'package:shoply/core/styles/theme/app_color_theme.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: LightColors.mainColor,
  appBarTheme: const AppBarTheme(color: LightColors.mainColor),

  extensions: const <ThemeExtension<dynamic>>[
    AppColorTheme.light,

  ],
  useMaterial3: true,
);

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: DarkColors.mainColor,
  appBarTheme: const AppBarTheme(color: DarkColors.mainColor),
  extensions: const <ThemeExtension<dynamic>>[AppColorTheme.dark, ],
  useMaterial3: true,
);
