import 'package:flutter/material.dart';
import 'package:shoply/core/app/connectivity_controller.dart';
import 'package:shoply/core/app/env_variables.dart';
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
            return MaterialApp(
            title: 'Shoply App',
            debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            builder: (context, child) => Scaffold(body: Builder(builder: (context) {
              ConnectivityController.instance.init();
              return child!;
            },),),
            home: Scaffold(
              appBar: AppBar(title: const Text('Shoply App')),
            ),
          );
        }else{
            return   MaterialApp(
              title: 'No Network',
              debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
              home: const NoNetworkScreen(),
            );
          }

        },);


  }
}
