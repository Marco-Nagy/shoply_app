import 'package:dio/dio.dart';
import 'package:shoply/core/app/Apis/api_result.dart';
import 'package:shoply/core/app/apis/errors/error_handler.dart';
import 'package:shoply/features/admin/categories/data/data_source/admin_categries_data_source.dart';
import 'package:shoply/features/admin/categories/data/model/create/create_category_request.dart';
import 'package:shoply/features/admin/categories/data/model/create/create_category_response.dart';
import 'package:shoply/features/admin/categories/data/model/delete/delete_response.dart';
import 'package:shoply/features/admin/categories/data/model/get_all_categories/get_all_categories.dart';
import 'package:shoply/features/admin/categories/data/model/update/update_category_request.dart';
import 'package:shoply/features/admin/categories/data/model/update/update_category_response.dart';

class AdminCategoriesRepository {
  final AdminCategoriesDataSource _dataSource;

  AdminCategoriesRepository(this._dataSource);

  Future<ApiResult<GetAllCategoriesResponse>> getAllCategories() async {
    try {
      final response = await _dataSource.getAllCategories();
      if (response.data != null) {
        return ApiResult.success(response);
      } else {
        return ApiResult.failure(ServerFailure(response.errors!.first.message));
      }
    } on DioException catch (dioError) {
      return ApiResult.failure(ServerFailure.fromDioException(dioError));
    } catch (error) {
      return ApiResult.failure(ServerFailure(error.toString()));
    }
  }
  Future<ApiResult<CreateCategoryResponse>> createNewCategory(CreateCategoryRequest body) async {
    try {
      final response = await _dataSource.createCategory(body);
      if (response.data != null) {
        return ApiResult.success(response);
      } else {
        return ApiResult.failure(ServerFailure(response.errors!.first.message));
      }
    } on DioException catch (dioError) {
      return ApiResult.failure(ServerFailure.fromDioException(dioError));
    } catch (error) {
      return ApiResult.failure(ServerFailure(error.toString()));
    }
  }
  Future<ApiResult<UpdateCategoryResponse>> updateCategory(UpdateCategoryRequest body)async {
    try {
      final response = await _dataSource.updateCategory(body);
      if (response.data != null) {
        return ApiResult.success(response);
      } else {
        return ApiResult.failure(ServerFailure(response.errors!.first.message));
      }
    } on DioException catch (dioError) {
      return ApiResult.failure(ServerFailure.fromDioException(dioError));
    } catch (error) {
      return ApiResult.failure(ServerFailure(error.toString()));
    }

  }

  Future<ApiResult<DeleteCategoryResponse>> deleteCategory(String categoryId)async {
    try {
      final response = await _dataSource.deleteCategory(categoryId);
      if (response.data != null) {
        return ApiResult.success(response);
      } else {
        return ApiResult.failure(ServerFailure(response.errors!.first.message));
      }
    } on DioException catch (dioError) {
      return ApiResult.failure(ServerFailure.fromDioException(dioError));
    } catch (error) {
      return ApiResult.failure(ServerFailure(error.toString()));
    }
  }

}
