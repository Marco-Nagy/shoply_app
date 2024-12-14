import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:shoply/core/app/apis/api_const.dart';
import 'package:shoply/features/admin/products/data/model/get_products_list/get_all_products.dart';

part 'filter_products_api_service.g.dart';

@RestApi(baseUrl: ApiConst.baseUrl)
abstract class FilterProductsApiService {
  factory FilterProductsApiService(Dio dio, {String baseUrl}) =
      _FilterProductsApiService;

  @POST(ApiConst.graphql)
  Future<GetAllProductsResponse> filterProducts(
      @Body() Map<String, dynamic> query);
}
