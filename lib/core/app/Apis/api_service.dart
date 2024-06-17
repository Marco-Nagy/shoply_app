import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:shoply/features/auth/data/models/login/login_response.dart';
import 'package:shoply/features/auth/data/models/role/user_role_response.dart';
part 'api_service.g.dart';
const String baseUrl ='https://api.escuelajs.co';
const String graphql ='/graphql';

@RestApi(baseUrl: baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl})= _ApiService;

  @POST(graphql)
  Future<LoginResponse> login(@Body() Map<String, dynamic> mutation);
  @POST(graphql)
  Future<UserRoleResponse> userRole(@Body() Map<String, dynamic> query);
}
