

import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/features/auth/data/models/login/login_request.dart';
import 'package:shoply/features/auth/data/models/sign_up/signup_request.dart';
import 'package:shoply/features/auth/domain/entities/auth_provider_type.dart';
import 'package:shoply/features/auth/domain/entities/auth_user.dart';

abstract interface class AuthRepository {
  Future<DataResult<AuthUser>> signIn(AuthProviderType provider ,{LoginRequest? loginRequest, SignupRequest? signupRequest});
}
