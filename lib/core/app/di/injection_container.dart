import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:shoply/core/app/Apis/api_service.dart';
import 'package:shoply/core/app/Apis/dio_factory.dart';
import 'package:shoply/core/app/app_cubit/app_cubit.dart';
import 'package:shoply/features/admin/categories/data/data_source/admin_categories_api_service.dart';
import 'package:shoply/features/admin/categories/data/data_source/admin_categries_data_source.dart';
import 'package:shoply/features/admin/categories/data/repository/admin_categories_repository.dart';
import 'package:shoply/features/admin/categories/presentation/bloc/admin_categories_bloc.dart';
import 'package:shoply/features/admin/dashboard/data/data_sources/dashboard_api_service.dart';
import 'package:shoply/features/admin/products/data/data_sources/admin_products_api_service.dart';
import 'package:shoply/features/admin/products/data/data_sources/admin_products_data_source.dart';
import 'package:shoply/features/admin/products/data/repository/admin_product_repository.dart';
import 'package:shoply/features/admin/products/presentation/bloc/admin_product_bloc.dart';
import 'package:shoply/features/auth/data/data_sources/auth_data_source.dart';
import 'package:shoply/features/auth/data/repositories/auth_repository.dart';
import 'package:shoply/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:shoply/features/files/data/data_sources/upload_file_data_source.dart';
import 'package:shoply/features/files/data/repositories/upload_file_repository.dart';
import 'package:shoply/features/files/presentation/cubit/file_cubit.dart';
import 'package:shoply/features/admin/dashboard/data/data_sources/dashboard_data_source.dart';
import 'package:shoply/features/admin/dashboard/data/repositories/dashboard_repository.dart';
import 'package:shoply/features/admin/dashboard/presentation/cubit/dashboard_bloc.dart';

final sl = GetIt.instance;

Future<void> setupInjector() async {
  await _initCore();
  await _initAuth();
  await _initDashboard();
  await _initAdminCategories();
  await _initAdminProducts();
}

Future<void> _initCore() async {
  final dio = DioFactory.getInstance();
  final navigatorState = GlobalKey<NavigatorState>();
  sl
    ..registerFactory(AppCubit.new)
    ..registerLazySingleton<ApiService>(() => ApiService(dio))
    ..registerSingleton <GlobalKey<NavigatorState>>(navigatorState)
    ..registerFactory(()=>FileCubit(sl()))
    ..registerLazySingleton(()=>FileRepository(sl()))
    ..registerLazySingleton(()=>FileDataSource(sl()))

  ;
}

Future<void> _initAuth() async {
  final dio = DioFactory.getInstance();
  sl
    ..registerFactory(() => AuthBloc(sl()))
    ..registerLazySingleton<AuthRepository>(() => AuthRepository(sl()))
    ..registerLazySingleton<AuthDataSource>(() => AuthDataSource(sl()));
}
Future<void> _initDashboard() async {
  final dio = DioFactory.getInstance();
  sl
    ..registerFactory(() => DashboardBloc(sl()))
    ..registerLazySingleton<DashboardRepository>(() => DashboardRepository(sl()))
    ..registerLazySingleton<DashboardDataSource>(() => DashboardDataSource(sl()))
    ..registerLazySingleton<DashboardApiService>(() => DashboardApiService(dio));
}
Future<void> _initAdminCategories() async {
  final dio = DioFactory.getInstance();
  sl
    ..registerFactory(() => AdminCategoriesBloc(sl()))
    ..registerLazySingleton<AdminCategoriesRepository>(
        () => AdminCategoriesRepository(sl()))
    ..registerLazySingleton<AdminCategoriesDataSource>(
        () => AdminCategoriesDataSource(sl()))
    ..registerLazySingleton<AdminCategoriesApiService>(
        () => AdminCategoriesApiService(dio));
}
Future<void> _initAdminProducts() async {
  final dio = DioFactory.getInstance();
  sl
    ..registerFactory(() => AdminProductBloc(sl()))
    ..registerLazySingleton<AdminProductRepository>(
        () => AdminProductRepository(sl()))
    ..registerLazySingleton<AdminProductsDataSource>(
        () => AdminProductsDataSource(sl()))
    ..registerLazySingleton<AdminProductsApiService>(
        () => AdminProductsApiService(dio));
}
