import 'dart:async';
import 'package:get_it/get_it.dart';
import 'package:shoply/core/app/Apis/api_service.dart';
import 'package:shoply/core/app/Apis/dio_factory.dart';
import 'package:shoply/core/app/app_cubit/app_cubit.dart';
import 'package:shoply/features/auth/data/data_sources/auth_data_source.dart';
import 'package:shoply/features/auth/data/repositories/auth_repository.dart';
import 'package:shoply/features/auth/presentation/bloc/auth_bloc.dart';

final sl = GetIt.instance;

Future<void> setupInjector() async {
  await _initCore();
  await _initAuth();
}

Future<void> _initCore() async {
  final dio = DioFactory.getInstance();
  sl
    ..registerFactory(AppCubit.new)
    ..registerLazySingleton<ApiService>(() => ApiService(dio));
}

Future<void> _initAuth() async {
  final dio = DioFactory.getInstance();
  sl
    ..registerFactory(() => AuthBloc(sl()))
    ..registerLazySingleton<AuthRepository>(() => AuthRepository(sl()))
    ..registerLazySingleton<AuthDataSource>(() => AuthDataSource(sl()));
}
