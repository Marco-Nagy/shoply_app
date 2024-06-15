import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shoply/core/app/abb_bloc_observer.dart';
import 'package:shoply/core/app/env_variables.dart';
import 'package:shoply/core/helpers/service_locator/injection_container.dart';
import 'package:shoply/core/helpers/shared_preference/shared_preference_helper.dart';
import 'package:shoply/firebase_options.dart';
import 'package:shoply/soply_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvVariables.instance.init(envType: EnvTypeEnum.dev);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await SharedPrefHelper().instantiatePreferences();
  await setupInjector();
  Bloc.observer = MyBlocObserver();

  runApp(const ShoplyApp());
}
