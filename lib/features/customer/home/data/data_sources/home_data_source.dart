import 'package:shoply/core/app/apis/graphQl/admin/categories_queries.dart';
import 'package:shoply/features/admin/products/data/data_sources/apis/products_queries.dart';
import 'package:shoply/features/admin/categories/data/model/get_all_categories/get_all_categories.dart';
import 'package:shoply/features/admin/products/data/model/get_products_list/get_all_products.dart';
import 'package:shoply/features/customer/home/data/data_sources/base_home_data_source.dart';
import 'package:shoply/features/customer/home/data/models/get_product_details/product_details.dart';

import 'apis/home_api_service.dart';
import 'apis/home_queries.dart';

class HomeDataSource extends BaseHomeDataSource{
  HomeDataSource(this._apiService);

  final HomeApiService _apiService;

  // Add your methods here, e.g.,
  @override
  Future<GetAllCategoriesResponse> getAllCategories() async {
    return _apiService
        .getAllCategories(HomeQueries().getAllCategories());
  }
  @override
  Future<GetAllProductsResponse> getProductsList() async {
    return await _apiService
        .getProductList(HomeQueries().getProductsList());
  }

  @override
  Future<ProductDetailsResponse> getProductDetails(
      {required String productId}) async {
    return await _apiService.getProductDetails(HomeQueries().getProductDetails(productId: productId));
  }

  @override
  Future<GetAllProductsResponse>  getProductListPerCategory({required String categoryId}) async {
  return await _apiService.getProductListPerCategory(HomeQueries().getProductListPerCategory(categoryId: categoryId));
  }
}
