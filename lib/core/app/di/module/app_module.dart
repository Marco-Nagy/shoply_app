import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shoply/core/Services/localDataSource/hive_database.dart';
import 'package:shoply/core/app/apis/api_service.dart';
import 'package:shoply/core/app/apis/dio_factory.dart';
import 'package:shoply/features/admin/categories/data/data_source/admin_categories_api_service.dart';
import 'package:shoply/features/admin/dashboard/data/data_sources/dashboard_api_service.dart';
import 'package:shoply/features/admin/products/data/data_sources/apis/admin_products_api_service.dart';
import 'package:shoply/features/customer/home/data/data_sources/apis/home_api_service.dart';
import 'package:shoply/features/filter/data/data_sources/apis/filter_products_api_service.dart';

@module
abstract class AppModule {
  @lazySingleton
  Dio get dio => DioFactory.getInstance();

  @singleton
  GlobalKey<NavigatorState> get navigatorKey => GlobalKey<NavigatorState>();

  @singleton
  @preResolve
  Future<HiveDatabaseHelper> get hiveDatabaseHelper async {
    final helper = HiveDatabaseHelper();
    await helper.initialize();
    return helper;
  }

  @lazySingleton
  ApiService get apiService => ApiService(dio);

  @lazySingleton
  DashboardApiService get dashboardApiService => DashboardApiService(dio);

  @lazySingleton
  AdminCategoriesApiService get adminCategoriesApiService =>
      AdminCategoriesApiService(dio);

  @lazySingleton
  AdminProductsApiService get adminProductsApiService =>
      AdminProductsApiService(dio);

  @lazySingleton
  HomeApiService get homeApiService => HomeApiService(dio);

  @lazySingleton
  FilterProductsApiService get filterProductsApiService =>
      FilterProductsApiService(dio);
}
