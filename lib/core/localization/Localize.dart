import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:shoply/core/Services/shared_preference/shared_pref_keys.dart';
import 'package:shoply/core/Services/shared_preference/shared_preference_helper.dart';


class Localize {
  Locale initialLocal = const Locale('en', 'US');

  String get(String text) {
    return text.tr();
  }



  static Future<Locale> getLocalLocale() async {
    final currentLanguage =  SharedPrefHelper().getString(
      key: SharedPrefKeys.language,
    );
    switch (currentLanguage) {
      case 'ar':
        return const Locale('ar', 'EG');
      case 'en':
        return const Locale('en', 'US');
      default:
        return const Locale('en', 'US');
    }
  }

  Future<void> initLocal() async {
    initialLocal = await getLocalLocale();
  }
}
