import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoply/core/Services/shared_preference/shared_preference_helper.dart';
import 'package:shoply/core/app/abb_bloc_observer.dart';
import 'package:shoply/core/app/env_variables.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/firebase_options.dart';
import 'package:shoply/soply_app.dart';

import 'app_config.dart';
import 'core/Services/hive/hive_database.dart';
import 'core/Services/push_notifications/firebase_cloud_messaging.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvVariables.instance.init(envType: EnvTypeEnum.prod);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseCloudMessaging().initialize();
  await SharedPrefHelper().instantiatePreferences();
  await HiveDatabase().setUp();
  await setupInjector();
  Bloc.observer = MyBlocObserver();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.yellow,
      systemNavigationBarColor: Colors.yellow,
    ),
  );

  const appConfig = AppConfig(
    appEnvironment: EnvTypeEnum.prod,
    appName: 'Shoply',
    description: 'This is a Production version of Shoply',
    baseUrl: '',
    child: ShoplyApp(),
  );

  runApp(appConfig);
}
