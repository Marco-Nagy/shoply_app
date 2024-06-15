import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoply/core/helpers/shared_preference/shared_pref_keys.dart';
import 'package:shoply/core/helpers/shared_preference/shared_preference_helper.dart';

part 'app_state.dart';

part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial());
  bool isDark = true;
  String currentLanguage = 'en';

  // * theme mode logic *
  Future<void> changeTheme({bool? sharedMode}) async {
    if (sharedMode != null) {
      isDark = sharedMode;
      emit(AppState.themeChangeMode(isDark: isDark));
    } else {
      isDark = !isDark;
      await SharedPrefHelper()
          .setBoolean(key: SharedPrefKeys.themeMode, boolValue: isDark)
          .then(
        (value) {
          emit(AppState.themeChangeMode(isDark: isDark));
        },
      );
    }
  }

  // * change Language logic *

  void getSavedLanguage() {
    final result =
        SharedPrefHelper().containPreference(key: SharedPrefKeys.language)
            ? SharedPrefHelper().getString(key: SharedPrefKeys.language)
            : 'en';
    currentLanguage = result!;
    emit(AppState.languageChange(local: Locale(currentLanguage)));
  }

  Future<void> _changeLanguage({String? langCode}) async {
    currentLanguage = langCode!;

    await SharedPrefHelper()
        .setString(key: SharedPrefKeys.language, stringValue: currentLanguage);
    emit(AppState.languageChange(local: Locale(currentLanguage)));
  }

  void toArabic() => _changeLanguage(langCode: 'ar');

  void toEnglish() => _changeLanguage(langCode: 'en');
}
