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
import 'package:shoply/features/admin/dashboard/data/data_sources/dashboard_data_source.dart';
import 'package:shoply/features/admin/dashboard/data/repositories/dashboard_repository.dart';
import 'package:shoply/features/admin/dashboard/presentation/cubit/dashboard_bloc.dart';
import 'package:shoply/features/admin/notifications/data/data_sources/add_notification_data_source.dart';
import 'package:shoply/features/admin/notifications/presentation/bloc/add_notification/admin_notifications_bloc.dart';
import 'package:shoply/features/admin/notifications/presentation/bloc/send_notification/send_notification_bloc.dart';
import 'package:shoply/features/admin/notifications/repository/add_notification_repo.dart';
import 'package:shoply/features/admin/products/data/data_sources/admin_products_data_source.dart';
import 'package:shoply/features/admin/products/data/data_sources/apis/admin_products_api_service.dart';
import 'package:shoply/features/admin/products/data/repository/admin_product_repository.dart';
import 'package:shoply/features/admin/products/domain/repositories/base_admin_product_repository.dart';
import 'package:shoply/features/admin/products/domain/use_cases/create_product_use_case.dart';
import 'package:shoply/features/admin/products/domain/use_cases/delete_product_use_case.dart';
import 'package:shoply/features/admin/products/domain/use_cases/get_products_list_use_case.dart';
import 'package:shoply/features/admin/products/domain/use_cases/update_product_use_case.dart';
import 'package:shoply/features/admin/products/presentation/bloc/admin_product_bloc.dart';
import 'package:shoply/features/auth/data/data_sources/auth_data_source.dart';
import 'package:shoply/features/auth/data/repositories/auth_repository.dart';
import 'package:shoply/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:shoply/features/customer/home/data/data_sources/apis/home_api_service.dart';
import 'package:shoply/features/customer/home/data/data_sources/home_data_source.dart';
import 'package:shoply/features/customer/home/data/repositories/home_repository.dart';
import 'package:shoply/features/customer/home/domain/repositories/base_home_repository.dart';
import 'package:shoply/features/customer/home/domain/use_cases/home_categories_list_use_case.dart';
import 'package:shoply/features/customer/home/domain/use_cases/home_products_list_per_category_use_case.dart';
import 'package:shoply/features/customer/home/domain/use_cases/home_products_list_use_case.dart';
import 'package:shoply/features/customer/home/domain/use_cases/products_details_use_case.dart';
import 'package:shoply/features/customer/home/presentation/bloc/home_bloc.dart';
import 'package:shoply/features/customer/main/presentation/cubit/main_cubit.dart';
import 'package:shoply/features/customer/profile/data/data_sources/profile_dat_source.dart';
import 'package:shoply/features/customer/profile/data/repositories/profile_repo.dart';
import 'package:shoply/features/customer/profile/presentation/bloc/profile_bloc.dart';
import 'package:shoply/features/files/data/data_sources/upload_file_data_source.dart';
import 'package:shoply/features/files/data/repositories/upload_file_repository.dart';
import 'package:shoply/features/files/presentation/cubit/file_cubit.dart';
import 'package:shoply/features/filter/data/data_sources/apis/filter_products_api_service.dart';
import 'package:shoply/features/filter/data/data_sources/filter_products_data_source.dart';
import 'package:shoply/features/filter/data/repositories/filter_products_repository.dart';
import 'package:shoply/features/filter/domain/repositories/base_admin_product_repository.dart';
import 'package:shoply/features/filter/domain/use_cases/get_products_list_use_case.dart';
import 'package:shoply/features/filter/presentation/bloc/filter_bloc.dart';

final sl = GetIt.instance;

Future<void> setupInjector() async {
  await _initCore();
  await _initAuth();
  await _initDashboard();
  await _initAdminCategories();
  await _initAdminProducts();
  await _initAdminNotifications();
  await _initMain();
  await _initProfile();
  await _initHomeCustomer();
  await _initFilterProducts();
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
  DioFactory.getInstance();
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
    ..registerFactory(() => AdminProductBloc(
          sl(),
          sl(),
          sl(),
          sl(),
        ))

    /// UseCases
    ..registerLazySingleton(
      () => GetProductsListUseCase(sl()),
    )
    ..registerLazySingleton(
      () => CreateProductUseCase(sl()),
    )
    ..registerLazySingleton(
      () => UpdateProductUseCase(sl()),
    )
    ..registerLazySingleton(() => DeleteProductUseCase(sl()),)
    //! Repositories
    ..registerLazySingleton<BaseAdminProductRepository>(() => AdminProductRepository(sl()))
    ..registerLazySingleton(() => AdminProductRepository(sl()))
    // ? DataSource
    ..registerLazySingleton<AdminProductsDataSource>(
        () => AdminProductsDataSource(sl()))
    //* ApiService
    ..registerLazySingleton<AdminProductsApiService>(
        () => AdminProductsApiService(dio));
}
Future<void> _initAdminNotifications() async {
  sl
    ..registerFactory(AdminNotificationsBloc.new)
    ..registerFactory(() => SendNotificationBloc(sl()))
    ..registerLazySingleton(() => AddNotificationRepo(sl()))
    ..registerLazySingleton( AddNotificationDataSource.new);
}
Future<void> _initMain() async {
  sl.registerFactory(MainCubit.new);
}
Future<void> _initProfile() async {
  DioFactory.getInstance();
  sl
    ..registerFactory(() => ProfileBloc(sl()))
    ..registerLazySingleton(() => ProfileRepo(sl()))
    ..registerLazySingleton(() => ProfileDataSource(sl()));
}
Future<void> _initHomeCustomer() async {
  final dio = DioFactory.getInstance();
  sl
    ..registerFactory(() => HomeBloc(
          sl(),
          sl(),
          sl(),
          sl(),
        ))

    /// UseCases
    ..registerLazySingleton(
      () => HomeCategoriesListUseCase(sl()),
    )
    ..registerLazySingleton(
      () => HomeProductsListUseCase(sl()),
    )
    ..registerLazySingleton(
      () => HomeProductsListPerCategoryUseCase(sl()),
    )
    ..registerLazySingleton(
      () => ProductsDetailsUseCase(sl()),
    )
    //! Repositories
    ..registerLazySingleton<BaseHomeRepository>(() => HomeRepository(sl()))
    ..registerLazySingleton(() => HomeRepository(sl()))
    // ? DataSource
    ..registerLazySingleton<HomeDataSource>(() => HomeDataSource(sl()))
    //* ApiService
    ..registerLazySingleton<HomeApiService>(() => HomeApiService(dio));

}
Future<void> _initFilterProducts() async {
  final dio = DioFactory.getInstance();
  sl
    ..registerFactory(() => FilterBloc(
          sl(),
        ))

    /// UseCases
    ..registerLazySingleton(
      () => FilterProductsListUseCase(sl()),
    )
    //! Repositories
    ..registerLazySingleton<BaseFilterProductsRepository>(() => FilterProductsRepository(sl()))
    ..registerLazySingleton(() => FilterProductsRepository(sl()))
    // ? DataSource
    ..registerLazySingleton<FilterProductsDataSource>(() => FilterProductsDataSource(sl()))
    //* ApiService
    ..registerLazySingleton<FilterProductsApiService>(() => FilterProductsApiService(dio));

}

