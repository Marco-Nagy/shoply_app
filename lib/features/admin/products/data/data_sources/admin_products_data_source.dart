import 'package:shoply/core/app/apis/graphQl/admin/products_queries.dart';
import 'package:shoply/features/admin/products/data/data_sources/admin_products_api_service.dart';
import 'package:shoply/features/admin/products/data/model/create_product/create_product_request.dart';
import 'package:shoply/features/admin/products/data/model/create_product/create_product_response.dart';
import 'package:shoply/features/admin/products/data/model/delete_category/delete_product.dart';
import 'package:shoply/features/admin/products/data/model/get_product_details/product_details.dart';
import 'package:shoply/features/admin/products/data/model/get_products_list/get_all_products.dart';
import 'package:shoply/features/admin/products/data/model/update_product/update_product_request.dart';
import 'package:shoply/features/admin/products/data/model/update_product/update_product_response.dart';

class AdminProductsDataSource {
  AdminProductsDataSource(this._apiService);

  final AdminProductsApiService _apiService;

  Future<GetAllProductsResponse> getProductsList() async {
    return await _apiService
        .getProductList(ProductsQueries().getProductsListMapQuery());
  }

  Future<ProductDetailsResponse> getProductDetails(
      {required String productId}) async {
    return await _apiService.getProductDetails(
        ProductsQueries().getProductDetailsMapQuery(productId));
  }

  Future<CreateProductResponse> createProduct(CreateProductRequest body) async {
    return await _apiService
        .createProduct(ProductsQueries().createProductMapMutation(body));
  }

  Future<UpdateProductResponse> updateProduct(UpdateProductRequest body) async {
    return await _apiService
        .updateProduct(ProductsQueries().updateProductMapMutation(body));
  }

  Future<DeleteProductResponse> deleteProduct(
      {required String productId}) async {
    return await _apiService
        .deleteProduct(ProductsQueries().deleteProductMapMutation(productId));
  }
}
