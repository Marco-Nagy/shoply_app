import 'package:shoply/core/app/apis/graphQl/admin/dashboard_queries.dart';
import 'package:shoply/features/admin/dashboard/data/data_sources/dashboard_api_service.dart';
import 'package:shoply/features/admin/dashboard/data/models/total_categories_response.dart';
import 'package:shoply/features/admin/dashboard/data/models/total_products_response.dart';
import 'package:shoply/features/admin/dashboard/data/models/total_users_response.dart';

class DashboardDataSource {
  final DashboardApiService _dashboardApiService;

  DashboardDataSource(this._dashboardApiService);

  Future<TotalProductsResponse> getTotalProducts() async {
    return await _dashboardApiService.getTotalProducts(DashboardQueries().totalProductsQueries());
  }
  Future<TotalCategoriesResponse> getTotalCategories() async {
    return await _dashboardApiService.getTotalCategories(DashboardQueries().totalCategoriesQueries());
  }
  Future<TotalUsersResponse> getTotalUsers() async {
    return await _dashboardApiService.getTotalUsers(DashboardQueries().totalUsersQueries());
  }
}
