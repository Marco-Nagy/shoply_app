import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shoply/core/app/env_variables.dart';
import 'package:shoply/firebase_options.dart';
import 'package:shoply/soply_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvVariables.instance.init(envType: EnvTypeEnum.dev);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  
  runApp(const ShoplyApp());
}
