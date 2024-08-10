import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:shoply/core/app/Apis/api_result.dart';
import 'package:shoply/features/admin/dashboard/data/data_sources/dashboard_data_source.dart';
import 'package:shoply/features/admin/dashboard/data/models/total_categories_response.dart';
import 'package:shoply/features/admin/dashboard/data/models/total_products_response.dart';
import 'package:shoply/features/admin/dashboard/data/models/total_users_response.dart';

import '../../../../../core/app/apis/errors/error_handler.dart';

class DashboardRepository {
  final DashboardDataSource _dataSource;

  DashboardRepository(this._dataSource);

  Future<ApiResult<TotalProductsResponse>> getTotalProducts() async {
    try {
      final response = await _dataSource.getTotalProducts();
      if (response.data != null) {
        return ApiResult.success(response);
      }
      debugPrint('errorResponse ${response.error.toString()}');
      return ApiResult.failure(
          ServerFailure(response.error!.first.message));
    } on DioException catch (dioError) {
      return ApiResult.failure(ServerFailure.fromDioException(dioError));
    } catch (error) {
      return ApiResult.failure(ServerFailure(error.toString()));
    }
  }
  Future<ApiResult<TotalCategoriesResponse>> getTotalCategories() async {
    try {
      final response = await _dataSource.getTotalCategories();
      if (response.data != null) {
        return ApiResult.success(response);
      }
      debugPrint('errorResponse ${response.errors.toString()}');
      return ApiResult.failure(
          ServerFailure(response.errors!.first.message));
    } on DioException catch (dioError) {
      return ApiResult.failure(ServerFailure.fromDioException(dioError));
    } catch (error) {
      return ApiResult.failure(ServerFailure(error.toString()));
    }
  }

  Future<ApiResult<TotalUsersResponse>> getTotalUsers() async {
    try {
      final response = await _dataSource.getTotalUsers();
      if (response.data != null) {
        return ApiResult.success(response);
      }
      debugPrint('errorResponse ${response.errors.toString()}');
      return ApiResult.failure(
          ServerFailure(response.errors!.first.message));
    } on DioException catch (dioError) {
      return ApiResult.failure(ServerFailure.fromDioException(dioError));
    } catch (error) {
      return ApiResult.failure(ServerFailure(error.toString()));
    }
  }


}
