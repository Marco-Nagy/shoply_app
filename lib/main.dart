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
  debugPrint('DEBUG: main() ENTRY');
  WidgetsFlutterBinding.ensureInitialized();
  debugPrint('DEBUG: WidgetsFlutterBinding initialized');
  await EnvVariables.instance.init(envType: EnvTypeEnum.dev);
  debugPrint('DEBUG: EnvVariables initialized');
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  debugPrint('DEBUG: Firebase initialized');
  await SharedPrefHelper().instantiatePreferences();
  debugPrint('DEBUG: SharedPrefHelper initialized');
  try {
    await configureInjection();
    debugPrint('DEBUG: configureInjection passed');
    debugPrint('DEBUG: AppCubit registered in main: ${sl.isRegistered<AppCubit>()}');
  } catch (e, s) {
    debugPrint('DEBUG: configureInjection FAILED: $e');
    debugPrint('DEBUG: Stack trace: $s');
  }
  debugPrint('DEBUG: sl hash in main: ${sl.hashCode}');
  Bloc.observer = MyBlocObserver();

  runApp(const ShoplyApp());
}
