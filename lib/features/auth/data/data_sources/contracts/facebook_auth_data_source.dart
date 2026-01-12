
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:shoply/features/auth/data/mappers/auth_mappers.dart';
import 'package:shoply/features/auth/data/models/auth_user_response.dart';

@lazySingleton
class FacebookAuthDataSource {
  final FacebookAuth _facebookAuth;

  FacebookAuthDataSource({
    FacebookAuth? facebookAuth,
  }) : _facebookAuth = facebookAuth ?? FacebookAuth.instance;

  Future<AuthUserResponse> signIn() async {
    try {
      final result = await _facebookAuth.login(
        permissions: const ['email', 'public_profile'],
      );

      if (result.status == LoginStatus.cancelled) {
        throw const FacebookSignInCancelledException();
      }

      if (result.status != LoginStatus.success) {
        throw FacebookSignInFailedException(
          message: result.message ?? result.status.name,
        );
      }

      final data = await _facebookAuth.getUserData();

      return AuthMappers.mapFacebookUserToDomain(data);
    } catch (e) {
      if (e is FacebookSignInCancelledException ||
          e is FacebookSignInFailedException) {
        rethrow;
      }
      throw FacebookSignInFailedException(message: e.toString());
    }
  }
}

class FacebookSignInCancelledException implements Exception {
  const FacebookSignInCancelledException();

  @override
  String toString() => 'facebook_sign_in_cancelled';
}

class FacebookSignInFailedException implements Exception {
  final String message;

  FacebookSignInFailedException({required this.message});

  @override
  String toString() => 'facebook_sign_in_failed: $message';
}
