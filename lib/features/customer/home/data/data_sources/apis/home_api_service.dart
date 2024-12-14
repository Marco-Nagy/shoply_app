import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:shoply/core/app/apis/api_const.dart';
import 'package:shoply/features/admin/categories/data/model/get_all_categories/get_all_categories.dart';

import 'package:shoply/features/admin/products/data/model/get_products_list/get_all_products.dart';
import 'package:shoply/features/customer/home/data/models/get_product_details/product_details.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConst.baseUrl)
abstract class HomeApiService {
factory  HomeApiService(Dio dio,{ String baseUrl}) =_HomeApiService;
  @POST(ApiConst.graphql)
  Future<GetAllCategoriesResponse> getAllCategories(@Body() Map<String, dynamic> query);
@POST(ApiConst.graphql)
Future<GetAllProductsResponse> getProductList(@Body() Map<String, dynamic> query);
@POST(ApiConst.graphql)
Future<GetAllProductsResponse> getProductListPerCategory(@Body() Map<String, dynamic> query);

@POST(ApiConst.graphql)
Future<ProductDetailsResponse> getProductDetails(@Body() Map<String, dynamic> query);


}
