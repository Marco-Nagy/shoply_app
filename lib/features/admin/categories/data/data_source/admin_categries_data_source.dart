import 'package:shoply/core/app/apis/graphQl/admin/categories_queries.dart';
import 'package:shoply/features/admin/categories/data/data_source/admin_categories_api_service.dart';
import 'package:shoply/features/admin/categories/data/model/create/create_category_request.dart';
import 'package:shoply/features/admin/categories/data/model/create/create_category_response.dart';
import 'package:shoply/features/admin/categories/data/model/delete/delete_response.dart';
import 'package:shoply/features/admin/categories/data/model/get_all_categories/get_all_categories.dart';
import 'package:shoply/features/admin/categories/data/model/update/update_category_request.dart';
import 'package:shoply/features/admin/categories/data/model/update/update_category_response.dart';

base class AdminCategoriesDataSource {
  AdminCategoriesDataSource(this._apiService);

  final AdminCategoriesApiService _apiService;

  // Add your methods here, e.g.,
  Future<GetAllCategoriesResponse> getAllCategories() async {
    return _apiService
        .getAllCategories(CategoriesQueries().getAllCategoriesMapMutation());
  }

  Future<CreateCategoryResponse> createCategory(
      CreateCategoryRequest body) async {
    return _apiService
        .createCategory(CategoriesQueries().createCategoryMapMutation(body));
  }

  Future<UpdateCategoryResponse> updateCategory(
      UpdateCategoryRequest body) async {
    return _apiService
        .updateCategory(CategoriesQueries().updateCategoryMapMutation(body));
  }

  Future<DeleteCategoryResponse> deleteCategory(String categoryId) async {
    return _apiService.deleteCategory(
        CategoriesQueries().deleteCategoryMapMutation(categoryId));
  }
}
