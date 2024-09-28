import 'package:shoply/features/admin/products/data/Mappers/create_product_mapper.dart';
import 'package:shoply/features/admin/products/data/data_sources/apis/admin_products_api_service.dart';
import 'package:shoply/features/admin/products/data/data_sources/base_products_data_source.dart';
import 'package:shoply/features/admin/products/data/model/create_product/create_product_request.dart';
import 'package:shoply/features/admin/products/data/model/create_product/create_product_response.dart';
import 'package:shoply/features/admin/products/data/model/delete_category/delete_product.dart';

import 'package:shoply/features/admin/products/data/model/get_products_list/get_all_products.dart';
import 'package:shoply/features/admin/products/data/model/update_product/update_product_request.dart';
import 'package:shoply/features/admin/products/data/model/update_product/update_product_response.dart';
import 'package:shoply/features/admin/products/domain/entities/create_product_entity.dart';
import 'package:shoply/features/admin/products/domain/entities/update_product_entity.dart';

import 'apis/products_queries.dart';

class AdminProductsDataSource implements BaseProductsDataSource {
  AdminProductsDataSource(this._apiService);

  final AdminProductsApiService _apiService;
  @override
  Future<GetAllProductsResponse> getProductsList() async {
    return await _apiService.getProductList(ProductsQueries().getProductsList());
  }

  // @override
  // Future<ProductDetailsResponse> getProductDetails(
  //     {required String productId}) async {
  //   return await _apiService.getProductDetails(ProductsQueries().getProductDetails(productId: productId));
  // }

  @override
  Future<CreateProductResponse> createProduct(CreateProductEntity body) async {
    return await _apiService
        .createProduct(ProductsQueries().createProduct(body));
  }

  @override
  Future<UpdateProductResponse> updateProduct(UpdateProductEntity body) async {
    return await _apiService
        .updateProduct(ProductsQueries().updateProduct(body));
  }

  @override
  Future<DeleteProductResponse> deleteProduct(
      {required String productId}) async {
    return await _apiService
        .deleteProduct(ProductsQueries().deleteProduct(productId: productId));
  }
}
