// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:dio/dio.dart' as _i361;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:flutter/material.dart' as _i409;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i806;
import 'package:get_it/get_it.dart' as _i174;
import 'package:google_sign_in/google_sign_in.dart' as _i116;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shoply/core/app/app_cubit/app_cubit.dart' as _i755;
import 'package:shoply/core/app/di/module/app_module.dart' as _i545;
import 'package:shoply/core/app/Networking/apis/api_service.dart' as _i376;
import 'package:shoply/core/Services/cloudinary/cloudinary_service.dart'
    as _i857;
import 'package:shoply/core/Services/firebase_helper/fire_store_helper.dart'
    as _i745;
import 'package:shoply/core/Services/localDataSource/hive_database.dart'
    as _i661;
import 'package:shoply/features/admin/categories/data/data_source/admin_categories_api_service.dart'
    as _i314;
import 'package:shoply/features/admin/categories/data/data_source/admin_categries_data_source.dart'
    as _i702;
import 'package:shoply/features/admin/categories/data/data_source/contract/admin_categories_firebase_data_source.dart'
    as _i263;
import 'package:shoply/features/admin/categories/data/data_source/impl/admin_categories_firebase_data_source_impl.dart'
    as _i1059;
import 'package:shoply/features/admin/categories/data/repository/admin_categories_repo_impl.dart'
    as _i873;
import 'package:shoply/features/admin/categories/data/repository/admin_categories_repository.dart'
    as _i554;
import 'package:shoply/features/admin/categories/domain/repositories/admin_categories_repo.dart'
    as _i523;
import 'package:shoply/features/admin/categories/domain/use_cases/create_firebase_category_use_case.dart'
    as _i118;
import 'package:shoply/features/admin/categories/domain/use_cases/delete_firebase_category_use_case.dart'
    as _i374;
import 'package:shoply/features/admin/categories/domain/use_cases/get_firebase_categories_use_case.dart'
    as _i445;
import 'package:shoply/features/admin/categories/domain/use_cases/update_firebase_category_use_case.dart'
    as _i603;
import 'package:shoply/features/admin/categories/presentation/bloc/admin_categories_bloc.dart'
    as _i374;
import 'package:shoply/features/admin/dashboard/data/data_sources/dashboard_api_service.dart'
    as _i213;
import 'package:shoply/features/admin/dashboard/data/data_sources/dashboard_data_source.dart'
    as _i414;
import 'package:shoply/features/admin/dashboard/data/repositories/dashboard_repository.dart'
    as _i1013;
import 'package:shoply/features/admin/dashboard/presentation/cubit/dashboard_bloc.dart'
    as _i413;
import 'package:shoply/features/admin/notifications/data/data_sources/add_notification_data_source.dart'
    as _i118;
import 'package:shoply/features/admin/notifications/domain/repository/add_notification_repo.dart'
    as _i638;
import 'package:shoply/features/admin/notifications/presentation/bloc/add_notification/admin_notifications_bloc.dart'
    as _i246;
import 'package:shoply/features/admin/notifications/presentation/bloc/send_notification/send_notification_bloc.dart'
    as _i461;
import 'package:shoply/features/admin/products/data/data_sources/admin_products_data_source.dart'
    as _i550;
import 'package:shoply/features/admin/products/data/data_sources/apis/admin_products_api_service.dart'
    as _i5;
import 'package:shoply/features/admin/products/data/repository/admin_product_repository.dart'
    as _i590;
import 'package:shoply/features/admin/products/domain/repositories/base_admin_product_repository.dart'
    as _i675;
import 'package:shoply/features/admin/products/domain/use_cases/create_product_use_case.dart'
    as _i743;
import 'package:shoply/features/admin/products/domain/use_cases/delete_product_use_case.dart'
    as _i583;
import 'package:shoply/features/admin/products/domain/use_cases/get_products_list_use_case.dart'
    as _i648;
import 'package:shoply/features/admin/products/domain/use_cases/update_product_use_case.dart'
    as _i839;
import 'package:shoply/features/admin/products/presentation/bloc/admin_product_bloc.dart'
    as _i575;
import 'package:shoply/features/auth/data/data_sources/contracts/auth_data_source.dart'
    as _i600;
import 'package:shoply/features/auth/data/data_sources/contracts/firebase_data_source.dart'
    as _i663;
import 'package:shoply/features/auth/data/data_sources/impl/firebase_data_source_impl.dart'
    as _i243;
import 'package:shoply/features/auth/data/repositories/auth_repository_impl.dart'
    as _i425;
import 'package:shoply/features/auth/domain/repositories/auth_repository.dart'
    as _i229;
import 'package:shoply/features/auth/domain/use_cases/sign_in_with_email_case.dart'
    as _i734;
import 'package:shoply/features/auth/domain/use_cases/sign_in_with_facebook_case.dart'
    as _i707;
import 'package:shoply/features/auth/domain/use_cases/sign_in_with_Gmail_case.dart'
    as _i871;
import 'package:shoply/features/auth/domain/use_cases/sign_up_with_email_case.dart'
    as _i1016;
import 'package:shoply/features/auth/presentation/bloc/auth_bloc.dart' as _i269;
import 'package:shoply/features/customer/favorites/data/data_sources/favorites_data_source.dart'
    as _i252;
import 'package:shoply/features/customer/favorites/data/repositories/favorites_repo_impl.dart'
    as _i53;
import 'package:shoply/features/customer/favorites/domain/repositories/favorites_repo.dart'
    as _i98;
import 'package:shoply/features/customer/favorites/domain/use_cases/get_favorites_use_case.dart'
    as _i966;
import 'package:shoply/features/customer/favorites/domain/use_cases/manage_favorite_use_case.dart'
    as _i112;
import 'package:shoply/features/customer/favorites/presentation/cubit/favorites_cubit.dart'
    as _i482;
import 'package:shoply/features/customer/home/data/data_sources/apis/home_api_service.dart'
    as _i304;
import 'package:shoply/features/customer/home/data/data_sources/home_data_source.dart'
    as _i848;
import 'package:shoply/features/customer/home/data/repositories/home_repository.dart'
    as _i392;
import 'package:shoply/features/customer/home/domain/repositories/base_home_repository.dart'
    as _i569;
import 'package:shoply/features/customer/home/domain/use_cases/home_categories_list_use_case.dart'
    as _i98;
import 'package:shoply/features/customer/home/domain/use_cases/home_products_list_per_category_use_case.dart'
    as _i113;
import 'package:shoply/features/customer/home/domain/use_cases/home_products_list_use_case.dart'
    as _i717;
import 'package:shoply/features/customer/home/domain/use_cases/products_details_use_case.dart'
    as _i563;
import 'package:shoply/features/customer/home/presentation/bloc/home_bloc.dart'
    as _i132;
import 'package:shoply/features/customer/main/presentation/cubit/main_cubit.dart'
    as _i188;
import 'package:shoply/features/files/data/data_sources/upload_file_data_source.dart'
    as _i786;
import 'package:shoply/features/files/data/repositories/upload_file_repository.dart'
    as _i11;
import 'package:shoply/features/files/presentation/cubit/file_cubit.dart'
    as _i847;
import 'package:shoply/features/filter/data/data_sources/apis/filter_products_api_service.dart'
    as _i872;
import 'package:shoply/features/filter/data/data_sources/filter_products_data_source.dart'
    as _i711;
import 'package:shoply/features/filter/data/repositories/filter_products_repository.dart'
    as _i771;
import 'package:shoply/features/filter/domain/repositories/base_admin_product_repository.dart'
    as _i794;
import 'package:shoply/features/filter/domain/use_cases/get_products_list_use_case.dart'
    as _i366;
import 'package:shoply/features/filter/presentation/bloc/filter_bloc.dart'
    as _i462;
import 'package:shoply/features/profile/data/data_sources/contract/user_profile_data_source.dart'
    as _i119;
import 'package:shoply/features/profile/data/data_sources/impl/user_profile_data_source_impl.dart'
    as _i39;
import 'package:shoply/features/profile/data/data_sources/profile_dat_source.dart'
    as _i369;
import 'package:shoply/features/profile/data/repositories/profile_repo.dart'
    as _i277;
import 'package:shoply/features/profile/data/repositories/user_profile_repo.dart'
    as _i180;
import 'package:shoply/features/profile/domain/repositories/user_profile_repo.dart'
    as _i21;
import 'package:shoply/features/profile/domain/use_cases/get_user_profile_use_case.dart'
    as _i1015;
import 'package:shoply/features/profile/domain/use_cases/update_user_profile_use_case.dart'
    as _i993;
import 'package:shoply/features/profile/presentation/bloc/profile_bloc.dart'
    as _i717;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.factory<_i755.AppCubit>(() => _i755.AppCubit());
    gh.factory<_i745.FireStoreService>(() => _i745.FireStoreService());
    gh.factory<_i188.MainCubit>(() => _i188.MainCubit());
    gh.singleton<_i409.GlobalKey<_i409.NavigatorState>>(
        () => appModule.navigatorKey);
    await gh.singletonAsync<_i661.HiveDatabaseHelper>(
      () => appModule.hiveDatabaseHelper,
      preResolve: true,
    );
    gh.lazySingleton<_i361.Dio>(() => appModule.dio);
    gh.lazySingleton<_i376.ApiService>(() => appModule.apiService);
    gh.lazySingleton<_i213.DashboardApiService>(
        () => appModule.dashboardApiService);
    gh.lazySingleton<_i314.AdminCategoriesApiService>(
        () => appModule.adminCategoriesApiService);
    gh.lazySingleton<_i5.AdminProductsApiService>(
        () => appModule.adminProductsApiService);
    gh.lazySingleton<_i304.HomeApiService>(() => appModule.homeApiService);
    gh.lazySingleton<_i872.FilterProductsApiService>(
        () => appModule.filterProductsApiService);
    gh.lazySingleton<_i59.FirebaseAuth>(() => appModule.firebaseAuth);
    gh.lazySingleton<_i116.GoogleSignIn>(() => appModule.googleSignIn);
    gh.lazySingleton<_i806.FacebookAuth>(() => appModule.facebookAuth);
    gh.lazySingleton<_i974.FirebaseFirestore>(
        () => appModule.firebaseFirestore);
    gh.lazySingleton<_i857.CloudinaryService>(() => _i857.CloudinaryService());
    gh.lazySingleton<_i118.AddNotificationDataSource>(
        () => _i118.AddNotificationDataSource());
    gh.lazySingleton<_i600.AuthDataSource>(
        () => _i600.AuthDataSource(gh<_i376.ApiService>()));
    gh.lazySingleton<_i369.ProfileDataSource>(
        () => _i369.ProfileDataSource(gh<_i376.ApiService>()));
    gh.factory<_i119.UserProfileDataSource>(
        () => _i39.UserProfileDataSourceImpl(gh<_i745.FireStoreService>()));
    gh.factory<_i246.AdminNotificationsBloc>(
        () => _i246.AdminNotificationsBloc(gh<_i661.HiveDatabaseHelper>()));
    gh.lazySingleton<_i252.FavoritesDataSource>(
        () => _i252.FavoritesDataSource(gh<_i661.HiveDatabaseHelper>()));
    gh.factory<_i21.UserProfileRepo>(
        () => _i180.UserProfileRepoImpl(gh<_i119.UserProfileDataSource>()));
    gh.lazySingleton<_i638.AddNotificationRepo>(
        () => _i638.AddNotificationRepo(gh<_i118.AddNotificationDataSource>()));
    gh.lazySingleton<_i277.ProfileRepo>(
        () => _i277.ProfileRepo(gh<_i369.ProfileDataSource>()));
    gh.lazySingleton<_i414.DashboardDataSource>(
        () => _i414.DashboardDataSource(gh<_i213.DashboardApiService>()));
    gh.lazySingleton<_i848.HomeDataSource>(
        () => _i848.HomeDataSource(gh<_i304.HomeApiService>()));
    gh.lazySingleton<_i786.FileDataSource>(() => _i786.FileDataSource(
          gh<_i376.ApiService>(),
          gh<_i745.FireStoreService>(),
          gh<_i857.CloudinaryService>(),
        ));
    gh.lazySingleton<_i711.FilterProductsDataSource>(() =>
        _i711.FilterProductsDataSource(gh<_i872.FilterProductsApiService>()));
    gh.factory<_i663.FirebaseDataSource>(() => _i243.FirebaseDataSourceImpl(
          gh<_i59.FirebaseAuth>(),
          gh<_i116.GoogleSignIn>(),
          gh<_i806.FacebookAuth>(),
          gh<_i974.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i569.BaseHomeRepository>(
        () => _i392.HomeRepository(gh<_i848.HomeDataSource>()));
    gh.factory<_i1015.GetUserProfileUseCase>(
        () => _i1015.GetUserProfileUseCase(gh<_i21.UserProfileRepo>()));
    gh.factory<_i993.UpdateUserProfileUseCase>(
        () => _i993.UpdateUserProfileUseCase(gh<_i21.UserProfileRepo>()));
    gh.lazySingleton<_i702.AdminCategoriesDataSource>(() =>
        _i702.AdminCategoriesDataSource(gh<_i314.AdminCategoriesApiService>()));
    gh.lazySingleton<_i98.FavoritesRepo>(
        () => _i53.FavoritesRepoImpl(gh<_i252.FavoritesDataSource>()));
    gh.lazySingleton<_i112.ManageFavoriteUseCase>(
        () => _i112.ManageFavoriteUseCase(gh<_i98.FavoritesRepo>()));
    gh.factory<_i229.AuthRepository>(() => _i425.AuthRepositoryImpl(
          gh<_i600.AuthDataSource>(),
          gh<_i663.FirebaseDataSource>(),
          gh<_i119.UserProfileDataSource>(),
        ));
    gh.factory<_i263.AdminCategoriesFirebaseDataSource>(() =>
        _i1059.AdminCategoriesFirebaseDataSourceImpl(
            gh<_i745.FireStoreService>()));
    gh.factory<_i461.SendNotificationBloc>(
        () => _i461.SendNotificationBloc(gh<_i638.AddNotificationRepo>()));
    gh.lazySingleton<_i550.AdminProductsDataSource>(
        () => _i550.AdminProductsDataSource(gh<_i5.AdminProductsApiService>()));
    gh.lazySingleton<_i11.FileRepository>(
        () => _i11.FileRepository(gh<_i786.FileDataSource>()));
    gh.lazySingleton<_i794.BaseFilterProductsRepository>(() =>
        _i771.FilterProductsRepository(gh<_i711.FilterProductsDataSource>()));
    gh.lazySingleton<_i675.BaseAdminProductRepository>(() =>
        _i590.AdminProductRepository(gh<_i550.AdminProductsDataSource>()));
    gh.factory<_i734.SignInWithEmailCase>(
        () => _i734.SignInWithEmailCase(gh<_i229.AuthRepository>()));
    gh.factory<_i707.SignInWithFacebookCaseDart>(
        () => _i707.SignInWithFacebookCaseDart(gh<_i229.AuthRepository>()));
    gh.factory<_i871.SignInWithGmailCaseDart>(
        () => _i871.SignInWithGmailCaseDart(gh<_i229.AuthRepository>()));
    gh.factory<_i1016.SignUpWithEmailCase>(
        () => _i1016.SignUpWithEmailCase(gh<_i229.AuthRepository>()));
    gh.factory<_i269.AuthBloc>(
        () => _i269.AuthBloc(gh<_i229.AuthRepository>()));
    gh.factory<_i717.ProfileBloc>(() => _i717.ProfileBloc(
          gh<_i1015.GetUserProfileUseCase>(),
          gh<_i993.UpdateUserProfileUseCase>(),
        ));
    gh.lazySingleton<_i1013.DashboardRepository>(
        () => _i1013.DashboardRepository(gh<_i414.DashboardDataSource>()));
    gh.lazySingleton<_i366.FilterProductsListUseCase>(() =>
        _i366.FilterProductsListUseCase(
            gh<_i794.BaseFilterProductsRepository>()));
    gh.lazySingleton<_i554.AdminCategoriesRepository>(() =>
        _i554.AdminCategoriesRepository(gh<_i702.AdminCategoriesDataSource>()));
    gh.factory<_i462.FilterBloc>(
        () => _i462.FilterBloc(gh<_i366.FilterProductsListUseCase>()));
    gh.lazySingleton<_i98.HomeCategoriesListUseCase>(
        () => _i98.HomeCategoriesListUseCase(gh<_i569.BaseHomeRepository>()));
    gh.lazySingleton<_i113.HomeProductsListPerCategoryUseCase>(() =>
        _i113.HomeProductsListPerCategoryUseCase(
            gh<_i569.BaseHomeRepository>()));
    gh.lazySingleton<_i717.HomeProductsListUseCase>(
        () => _i717.HomeProductsListUseCase(gh<_i569.BaseHomeRepository>()));
    gh.lazySingleton<_i563.ProductsDetailsUseCase>(
        () => _i563.ProductsDetailsUseCase(gh<_i569.BaseHomeRepository>()));
    gh.lazySingleton<_i966.GetFavoritesUseCase>(
        () => _i966.GetFavoritesUseCase(gh<_i98.FavoritesRepo>()));
    gh.factory<_i847.FileCubit>(() => _i847.FileCubit(
          gh<_i11.FileRepository>(),
          gh<_i409.GlobalKey<_i409.NavigatorState>>(),
        ));
    gh.factory<_i523.AdminCategoriesRepo>(() => _i873.AdminCategoriesRepoImpl(
        gh<_i263.AdminCategoriesFirebaseDataSource>()));
    gh.factory<_i413.DashboardBloc>(
        () => _i413.DashboardBloc(gh<_i1013.DashboardRepository>()));
    gh.factory<_i482.FavoritesCubit>(() => _i482.FavoritesCubit(
          gh<_i112.ManageFavoriteUseCase>(),
          gh<_i966.GetFavoritesUseCase>(),
        ));
    gh.lazySingleton<_i743.CreateProductUseCase>(() =>
        _i743.CreateProductUseCase(gh<_i675.BaseAdminProductRepository>()));
    gh.lazySingleton<_i583.DeleteProductUseCase>(() =>
        _i583.DeleteProductUseCase(gh<_i675.BaseAdminProductRepository>()));
    gh.lazySingleton<_i648.GetProductsListUseCase>(() =>
        _i648.GetProductsListUseCase(gh<_i675.BaseAdminProductRepository>()));
    gh.lazySingleton<_i839.UpdateProductUseCase>(() =>
        _i839.UpdateProductUseCase(gh<_i675.BaseAdminProductRepository>()));
    gh.factory<_i132.HomeBloc>(() => _i132.HomeBloc(
          gh<_i717.HomeProductsListUseCase>(),
          gh<_i113.HomeProductsListPerCategoryUseCase>(),
          gh<_i98.HomeCategoriesListUseCase>(),
          gh<_i563.ProductsDetailsUseCase>(),
        ));
    gh.factory<_i118.CreateFirebaseCategoryUseCase>(() =>
        _i118.CreateFirebaseCategoryUseCase(gh<_i523.AdminCategoriesRepo>()));
    gh.factory<_i374.DeleteFirebaseCategoryUseCase>(() =>
        _i374.DeleteFirebaseCategoryUseCase(gh<_i523.AdminCategoriesRepo>()));
    gh.factory<_i445.GetFirebaseCategoriesUseCase>(() =>
        _i445.GetFirebaseCategoriesUseCase(gh<_i523.AdminCategoriesRepo>()));
    gh.factory<_i603.UpdateFirebaseCategoryUseCase>(() =>
        _i603.UpdateFirebaseCategoryUseCase(gh<_i523.AdminCategoriesRepo>()));
    gh.factory<_i575.AdminProductBloc>(() => _i575.AdminProductBloc(
          gh<_i648.GetProductsListUseCase>(),
          gh<_i743.CreateProductUseCase>(),
          gh<_i839.UpdateProductUseCase>(),
          gh<_i583.DeleteProductUseCase>(),
        ));
    gh.factory<_i374.AdminCategoriesBloc>(() => _i374.AdminCategoriesBloc(
          gh<_i554.AdminCategoriesRepository>(),
          gh<_i445.GetFirebaseCategoriesUseCase>(),
          gh<_i118.CreateFirebaseCategoryUseCase>(),
          gh<_i603.UpdateFirebaseCategoryUseCase>(),
          gh<_i374.DeleteFirebaseCategoryUseCase>(),
        ));
    return this;
  }
}

class _$AppModule extends _i545.AppModule {}
