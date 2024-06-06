import 'package:flutter/material.dart';
import 'package:shoply/core/localization/app_localizations.dart';
import 'package:shoply/core/styles/theme/app_color_theme.dart';
import 'package:shoply/core/styles/theme/app_icon_theme.dart';

extension MyContext on BuildContext {
  AppColorTheme get colors => Theme.of(this).extension<AppColorTheme>()??AppColorTheme.light;

  AppIconTheme get icons => Theme.of(this).extension<AppIconTheme>()??AppIconTheme.light;


  String  translate(String text) {
   if (AppLocalizations.of(this) != null) {
     return AppLocalizations.of(this )!.translate(text)
        .toString();
   }else {
     return '';
   }
  }
}
