import 'package:flutter/material.dart';
import 'package:shoply/core/localization/app_localizations.dart';
import 'package:shoply/core/styles/theme/APP_assets_theme.dart';
import 'package:shoply/core/styles/theme/app_color_theme.dart';

extension MyContext on BuildContext {
  AppColorTheme get colors => Theme.of(this).extension<AppColorTheme>()??AppColorTheme.dark;
  AppAssetsTheme get assets => Theme.of(this).extension<AppAssetsTheme>()??AppAssetsTheme.dark;
  String  translate(String text) {
   if (AppLocalizations.of(this) != null) {
     return AppLocalizations.of(this )!.translate(text)
        .toString();
   }else {
     return '';
   }
  }
}
