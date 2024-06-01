import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoply/core/app/connectivity_controller.dart';
import 'package:shoply/core/app/env_variables.dart';
import 'package:shoply/core/routes/app_routes.dart';
import 'package:shoply/core/styles/my_fonts.dart';
import 'package:shoply/core/utils/screens/no_network_screen.dart';

class ShoplyApp extends StatelessWidget {
  const ShoplyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return ScreenUtilInit(
            designSize: const Size(390, 844),
            child: MaterialApp(
              title: 'Shoply App',
              debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              builder: (context, child) => Scaffold(
                body: Builder(
                  builder: (context) {
                    ConnectivityController.instance.init();
                    return child!;
                  },
                ),
              ),
              initialRoute: '/',
              onGenerateRoute: AppRoutes.onGenerateRoute,
            ),
          );
        } else {
          return MaterialApp(
            title: 'No Network',
            debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
            home: const NoNetworkScreen(),
          );
        }
      },
    );
  }
}
