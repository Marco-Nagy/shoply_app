import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/features/admin/dashboard/data/data_sources/dashboard_data_source.dart';
import 'package:shoply/features/admin/dashboard/data/models/total_categories_response.dart';
import 'package:shoply/features/admin/dashboard/data/models/total_products_response.dart';
import 'package:shoply/features/admin/dashboard/data/models/total_users_response.dart';

import '../../../../../core/app/Networking/errors/error_handler.dart';

@lazySingleton
class DashboardRepository {
  final DashboardDataSource _dataSource;

  DashboardRepository(this._dataSource);

  Future<DataResult<TotalProductsResponse>> getTotalProducts() async {
    try {
      final response = await _dataSource.getTotalProducts();
      if (response.data != null) {
        return DataResult.success(response);
      }
      debugPrint('errorResponse ${response.error.toString()}');
      return DataResult.failure(ServerFailure(response.error!.first.message));
    } on DioException catch (dioError) {
      return DataResult.failure(ServerFailure.fromDioException(dioError));
    } catch (error) {
      return DataResult.failure(ServerFailure(error.toString()));
    }
  }

  Future<DataResult<TotalCategoriesResponse>> getTotalCategories() async {
    try {
      final response = await _dataSource.getTotalCategories();
      if (response.data != null) {
        return DataResult.success(response);
      }
      debugPrint('errorResponse ${response.errors.toString()}');
      return DataResult.failure(ServerFailure(response.errors!.first.message));
    } on DioException catch (dioError) {
      return DataResult.failure(ServerFailure.fromDioException(dioError));
    } catch (error) {
      return DataResult.failure(ServerFailure(error.toString()));
    }
  }

  Future<DataResult<TotalUsersResponse>> getTotalUsers() async {
    try {
      final response = await _dataSource.getTotalUsers();
      if (response.data != null) {
        return DataResult.success(response);
      }
      debugPrint('errorResponse ${response.errors.toString()}');
      return DataResult.failure(ServerFailure(response.errors!.first.message));
    } on DioException catch (dioError) {
      return DataResult.failure(ServerFailure.fromDioException(dioError));
    } catch (error) {
      return DataResult.failure(ServerFailure(error.toString()));
    }
  }
}
