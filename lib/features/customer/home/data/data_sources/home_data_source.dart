import 'package:shoply/core/app/apis/graphQl/admin/categories_queries.dart';
import 'package:shoply/core/app/apis/graphQl/admin/products_queries.dart';
import 'package:shoply/features/admin/categories/data/model/get_all_categories/get_all_categories.dart';
import 'package:shoply/features/admin/products/data/model/get_product_details/product_details.dart';
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
        .getProductList(ProductsQueries().getProductsListMapQuery());
  }

  Future<ProductDetailsResponse> getProductDetails(
      {required String productId}) async {
    return await _apiService.getProductDetails(
        ProductsQueries().getProductDetailsMapQuery(productId));
  }
}
