import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:shoply/core/app/apis/api_const.dart';
import 'package:shoply/features/admin/products/data/model/create_product/create_product_response.dart';
import 'package:shoply/features/admin/products/data/model/delete_category/delete_product.dart';

import 'package:shoply/features/admin/products/data/model/get_products_list/get_all_products.dart';
import 'package:shoply/features/admin/products/data/model/update_product/update_product_response.dart';

part 'admin_products_api_service.g.dart';

@RestApi(baseUrl: ApiConst.baseUrl)
abstract class AdminProductsApiService {
  @POST(ApiConst.graphql)
  factory AdminProductsApiService(Dio dio, {String baseUrl}) =
      _AdminProductsApiService;

  @POST(ApiConst.graphql)
  Future<GetAllProductsResponse> getProductList(
      @Body() Map<String, dynamic> query);

  @POST(ApiConst.graphql)
  Future<CreateProductResponse> createProduct(
      @Body() Map<String, dynamic> mutation);

  @POST(ApiConst.graphql)
  Future<UpdateProductResponse> updateProduct(
      @Body() Map<String, dynamic> mutation);

  @POST(ApiConst.graphql)
  Future<DeleteProductResponse> deleteProduct(
      @Body() Map<String, dynamic> mutation);
}
