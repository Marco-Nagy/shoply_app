import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shoply/core/app/apis/api_const.dart';
import 'package:shoply/features/auth/data/models/login/login_response.dart';
import 'package:shoply/features/auth/data/models/role/user_role_response.dart';
import 'package:shoply/features/auth/data/models/sign_up/signup_response.dart';
import 'package:shoply/features/files/data/models/upload_model.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConst.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl})= _ApiService;

  @POST(ApiConst.graphql)
  Future<LoginResponse> login(@Body() Map<String, dynamic> mutation);
  @POST(ApiConst.graphql)
  Future<SignupResponse> signUp(@Body() Map<String, dynamic> mutation);
  @GET(ApiConst.profile)
  Future<UserRoleResponse> userRole(@Header('Authorization')  String token);
  @POST(ApiConst.uploadFile)
  Future<UploadFileResponse> uploadFile(@Body() FormData file);
}
