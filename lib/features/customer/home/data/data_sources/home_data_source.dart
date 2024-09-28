import 'package:shoply/core/app/apis/graphQl/admin/categories_queries.dart';
import 'package:shoply/features/admin/products/data/data_sources/apis/products_queries.dart';
import 'package:shoply/features/admin/categories/data/model/get_all_categories/get_all_categories.dart';
import 'package:shoply/features/admin/products/data/model/get_products_list/get_all_products.dart';

import 'home_api_service.dart';

class HomeDataSource {
  HomeDataSource(this._apiService);

  final HomeApiService _apiService;

  // Add your methods here, e.g.,
  Future<GetAllCategoriesResponse> getAllCategories() async {
    return _apiService
        .getAllCategories(CategoriesQueries().getAllCategoriesMapMutation());
  }
  Future<GetAllProductsResponse> getProductsList() async {
    return await _apiService
        .getProductList(ProductsQueries().getProductsList());
  }

  // Future<ProductDetailsResponse> getProductDetails(
  //     {required String productId}) async {
  //   return await _apiService.getProductDetails(
  //       ProductsQueries().getProductDetails(productId: productId));
  // }
}
