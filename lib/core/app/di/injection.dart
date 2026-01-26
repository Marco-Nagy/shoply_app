import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shoply/core/app/app_cubit/app_cubit.dart';
import 'package:shoply/core/app/di/injection.config.dart';

final sl = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: false, // default
  asExtension: true, // default
)
Future<void> configureInjection() async {
  debugPrint('DEBUG: configureInjection START - sl hash: ${sl.hashCode}');
  await sl.init();
  debugPrint(
      'DEBUG: configureInjection END - AppCubit registered: ${sl.isRegistered<AppCubit>()}');
}
