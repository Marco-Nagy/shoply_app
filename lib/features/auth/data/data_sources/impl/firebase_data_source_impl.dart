import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/core/app/Networking/execute_data.dart';
import 'package:shoply/core/helpers/extension/string_exetension.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/features/auth/data/data_sources/contracts/firebase_data_source.dart';
import 'package:shoply/features/auth/data/mappers/auth_mappers.dart';
import 'package:shoply/features/auth/data/models/auth_user_response.dart';
import 'package:shoply/features/auth/data/models/login/login_request.dart';
import 'package:shoply/features/auth/data/models/sign_up/signup_request.dart';
import 'package:shoply/features/auth/domain/entities/auth_provider_type.dart';

@Injectable(as: FirebaseDataSource)
class FirebaseDataSourceImpl implements FirebaseDataSource {
  final FirebaseAuth _auth;
  final GoogleSignIn _googleSignIn;
  final FacebookAuth _facebookAuth;
  final FirebaseFirestore _firestore;
  @factoryMethod
  FirebaseDataSourceImpl(
      this._auth, this._googleSignIn, this._facebookAuth, this._firestore);
  @override
  Future<DataResult<AuthUserResponse>> signIn(AuthProviderType type,
      {LoginRequest? loginRequest, SignupRequest? signupRequest}) {
    switch (type) {
      case AuthProviderType.email:
        return signInWithEmail(
            loginRequest: loginRequest, signupRequest: signupRequest);
      case AuthProviderType.google:
        return signInWithGoogle();
      case AuthProviderType.facebook:
        return signInWithFacebook();
    }
  }

  Future<DataResult<AuthUserResponse>> signInWithEmail({
    LoginRequest? loginRequest,
    SignupRequest? signupRequest,
  }) async {
    return executeData(() async {
      UserCredential response;

      if (loginRequest != null) {
        if (loginRequest.email == null || loginRequest.email!.isEmpty) {
          throw Exception(LangKeys.errorInvalidEmail.toTranslate());
        }
        if (loginRequest.password == null || loginRequest.password!.isEmpty) {
          throw Exception(LangKeys.errorWrongPassword.toTranslate());
        }

        response = await _auth.signInWithEmailAndPassword(
          email: loginRequest.email ?? '',
          password: loginRequest.password ?? '',
        );
      } else if (signupRequest != null) {
        response = await _auth.createUserWithEmailAndPassword(
          email: signupRequest.email ?? '',
          password: signupRequest.password ?? '',
        );
      } else {
        throw Exception(LangKeys.authRequestRequired.toTranslate());
      }

      return AuthMappers.mapFirebaseCredentialToResponse(response);
    });
  }

  Future<DataResult<AuthUserResponse>> signInWithGoogle() async {
    return executeData(() async {
      final response = await _googleSignIn.signIn();
      if (response == null) {
        throw Exception(LangKeys.googleSignInCancelled.toTranslate());
      }
      final GoogleSignInAuthentication googleAuth =
          await response.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential = await _auth.signInWithCredential(credential);
      return AuthMappers.mapFirebaseCredentialToResponse(userCredential);
    });
  }

  Future<DataResult<AuthUserResponse>> signInWithFacebook() async {
    return executeData(() async {
      debugPrint('************* Facebook Sign In ****************************');
      final result = await _facebookAuth.login(
        permissions: const ['email', 'public_profile'],
      );

      if (result.status != LoginStatus.success || result.accessToken == null) {
        throw Exception(
            result.message ?? LangKeys.facebookLoginFailed.toTranslate());
      }

      final credential = FacebookAuthProvider.credential(
        result.accessToken!.tokenString,
      );

      final userCredential = await _auth.signInWithCredential(credential);
      return AuthMappers.mapFirebaseCredentialToResponse(userCredential);
    });
  }
}
