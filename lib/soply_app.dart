import 'package:flutter/material.dart';
import 'package:shoply/core/app/env_variables.dart';

class ShoplyApp extends StatelessWidget {
  const ShoplyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Shoply App')),
      ),
    );
  }
}
