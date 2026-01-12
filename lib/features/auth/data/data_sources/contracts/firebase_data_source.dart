import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/features/auth/data/models/auth_user_response.dart';

abstract class FirebaseDataSource {
  Future<DataResult<AuthUserResponse>> signIn();
}
