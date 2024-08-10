import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:shoply/core/app/apis/api_const.dart';
import 'package:shoply/features/admin/categories/data/model/create/create_category_response.dart';
import 'package:shoply/features/admin/categories/data/model/delete/delete_response.dart';
import 'package:shoply/features/admin/categories/data/model/get_all_categories/get_all_categories.dart';
import 'package:shoply/features/admin/categories/data/model/update/update_category_response.dart';
part 'admin_categories_api_service.g.dart';

@RestApi(baseUrl: ApiConst.baseUrl)
abstract class AdminCategoriesApiService {
factory  AdminCategoriesApiService(Dio dio,{ String baseUrl}) =_AdminCategoriesApiService;
  @POST(ApiConst.graphql)
  Future<GetAllCategoriesResponse> getAllCategories(@Body() Map<String, dynamic> query);
  @POST(ApiConst.graphql)
  Future<CreateCategoryResponse> createCategory(@Body() Map<String, dynamic> mutation);
  @POST(ApiConst.graphql)
  Future<UpdateCategoryResponse> updateCategory(@Body() Map<String, dynamic> mutation);
  @POST(ApiConst.graphql)
  Future<DeleteCategoryResponse> deleteCategory(@Body() Map<String, dynamic> mutation);
}
