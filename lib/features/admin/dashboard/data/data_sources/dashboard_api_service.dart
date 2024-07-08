import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:shoply/core/app/apis/api_const.dart';
import 'package:shoply/features/admin/dashboard/data/models/total_categories_response.dart';
import 'package:shoply/features/admin/dashboard/data/models/total_products_response.dart';
import 'package:shoply/features/admin/dashboard/data/models/total_users_response.dart';
part 'dashboard_api_service.g.dart';

@RestApi(baseUrl: ApiConst.baseUrl)
abstract class DashboardApiService {
  factory DashboardApiService (Dio dio,{String baseUrl}) = _DashboardApiService;
  @GET(ApiConst.graphql)
  Future<TotalProductsResponse> getTotalProducts(@Body() Map<String, dynamic> mutation);
  @GET(ApiConst.graphql)
  Future<TotalCategoriesResponse> getTotalCategories(@Body() Map<String, dynamic> mutation);
  @GET(ApiConst.graphql)
  Future<TotalUsersResponse> getTotalUsers(@Body() Map<String, dynamic> mutation);

}
