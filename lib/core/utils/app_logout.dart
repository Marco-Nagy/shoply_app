import 'package:flutter/widgets.dart';
import 'package:shoply/core/Services/localDataSource/hive_database.dart';
import 'package:shoply/core/Services/localDataSource/isar_database_helper.dart';
import 'package:shoply/core/Services/shared_preference/shared_pref_keys.dart';
import 'package:shoply/core/Services/shared_preference/shared_preference_helper.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/core/helpers/extension/navigations.dart';
import 'package:shoply/core/routes/app_routes.dart';


class AppLogout {
  factory AppLogout() {
    return _instance;
  }

  AppLogout._();

  static final AppLogout _instance = AppLogout._();

  Future<void> logout() async {
    final context = sl<GlobalKey<NavigatorState>>().currentState!.context;
    await SharedPrefHelper().removePreference(key: SharedPrefKeys.accessToken);
    await SharedPrefHelper().removePreference(key: SharedPrefKeys.userRole);
    await SharedPrefHelper().removePreference(key: SharedPrefKeys.userId);
    await HiveDatabase().clearAllBoxes();
    await IsarDatabaseHelper().clearAllCollections();
    await SharedPrefHelper().clearPreferences();
    if (!context.mounted) return;
    await context.pushReplacementNamed(AppRoutes.login);
  }
}
