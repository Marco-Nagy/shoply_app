import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoply/core/Services/shared_preference/shared_preference_helper.dart';
import 'package:shoply/core/app/abb_bloc_observer.dart';
import 'package:shoply/core/app/env_variables.dart';
import 'package:shoply/core/app/service_locator/injection_container.dart';
import 'package:shoply/firebase_options.dart';
import 'package:shoply/soply_app.dart';
import 'package:flutter/material.dart';
import 'app_config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvVariables.instance.init(envType: EnvTypeEnum.dev);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await SharedPrefHelper().instantiatePreferences();
  await setupInjector();
  Bloc.observer = MyBlocObserver();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.green,
      systemNavigationBarColor: Colors.green,
    ),
  );
  var appConfig = AppConfig(
    appEnvironment: EnvTypeEnum.dev,
    appName: 'Shoply  Development',
    description: 'This is a Development version of Shoply',
    baseUrl: '',
    child: const ShoplyApp(),
  );
  runApp(appConfig);
}
