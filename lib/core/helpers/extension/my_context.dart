import 'package:flutter/material.dart';
import 'package:shoply/core/styles/theme/app_color_theme.dart';
import 'package:shoply/core/styles/theme/app_icon_theme.dart';

extension MyContext on BuildContext {
  AppColorTheme get colors => Theme.of(this).extension<AppColorTheme>()!;

  AppIconTheme get icons => Theme.of(this).extension<AppIconTheme>()!;
}
