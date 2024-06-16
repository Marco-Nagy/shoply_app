import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/Services/shared_preference/shared_pref_keys.dart';
import 'package:shoply/core/Services/shared_preference/shared_preference_helper.dart';
import 'package:shoply/core/app/app_cubit/app_cubit.dart';
import 'package:shoply/core/app/connectivity_controller.dart';
import 'package:shoply/core/app/env_variables.dart';
import 'package:shoply/core/app/service_locator/injection_container.dart';
import 'package:shoply/core/localization/app_localizations_setup.dart';
import 'package:shoply/core/routes/app_routes.dart';
import 'package:shoply/core/styles/theme/app_theme.dart';
import 'package:shoply/core/utils/screens/no_network_screen.dart';

class ShoplyApp extends StatelessWidget {
  const ShoplyApp({super.key});

  //!  This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return BlocProvider(
            create: (context) =>
            sl<AppCubit>()
              ..changeTheme(
                  sharedMode: SharedPrefHelper()
                      .getBoolean(key: SharedPrefKeys.themeMode)),
            child: ScreenUtilInit(
              designSize: const Size(390, 844),
              minTextAdapt: true,
              child: BlocBuilder<AppCubit, AppState>(
                buildWhen: (previous, current) {
                return  previous != current;
                },
                builder: (context, state) {
                  final cubit = context.read<AppCubit>();
                  return MaterialApp(
                    title: 'Shoply App',
                    debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
                    theme:cubit.isDark? darkTheme:lightTheme,
                    locale:  Locale(cubit.currentLanguage),
                    supportedLocales: AppLocalizationsSetup.supportedLocales,
                    localeResolutionCallback:
                    AppLocalizationsSetup.localeResolutionCallback,
                    localizationsDelegates:
                    AppLocalizationsSetup.localizationsDelegates,
                    builder: (context, child) =>
                        Scaffold(
                          body: Builder(
                            builder: (context) {
                              ConnectivityController.instance.init();
                              return child!;
                            },
                          ),
                        ),
                    initialRoute: '/',
                    onGenerateRoute: AppRoutes.onGenerateRoute,
                  );
                },
              ),
            ),
          );
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
            home: const NoNetworkScreen(),
          );
        }
      },
    );
  }
}
