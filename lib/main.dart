import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shoply/core/Services/shared_preference/shared_preference_helper.dart';
import 'package:shoply/core/app/abb_bloc_observer.dart';
import 'package:shoply/core/app/app_cubit/app_cubit.dart';
import 'package:shoply/core/app/env_variables.dart';
import 'package:shoply/core/app/di/injection.dart';
import 'package:shoply/firebase_options.dart';
import 'package:shoply/soply_app.dart';

Future<void> main() async {
  print('DEBUG: main() ENTRY');
  WidgetsFlutterBinding.ensureInitialized();
  print('DEBUG: WidgetsFlutterBinding initialized');
  await EnvVariables.instance.init(envType: EnvTypeEnum.dev);
  print('DEBUG: EnvVariables initialized');
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  print('DEBUG: Firebase initialized');
  await SharedPrefHelper().instantiatePreferences();
  print('DEBUG: SharedPrefHelper initialized');
  try {
    await configureInjection();
    print('DEBUG: configureInjection passed');
    print('DEBUG: AppCubit registered in main: ${sl.isRegistered<AppCubit>()}');
  } catch (e, s) {
    print('DEBUG: configureInjection FAILED: $e');
    print('DEBUG: Stack trace: $s');
  }
  print('DEBUG: sl hash in main: ${sl.hashCode}');
  Bloc.observer = MyBlocObserver();

  runApp(const ShoplyApp());
}
