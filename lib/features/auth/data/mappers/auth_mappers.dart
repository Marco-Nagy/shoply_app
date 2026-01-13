import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/helpers/extension/string_exetension.dart';
import 'package:shoply/features/auth/data/models/auth_user_response.dart';
import 'package:shoply/features/auth/domain/entities/auth_user.dart';

class AuthMappers {
  static AuthUserResponse mapFirebaseCredentialToResponse(
      UserCredential userCredential) {
    final user = userCredential.user;
    if (user == null) {
      throw Exception(LangKeys.firebaseUserNull.toTranslate());
    }

    debugPrint(
        ' User logged ${'${user.uid} ${user.displayName ?? 'No name'}\n ${user.email ?? 'No email'} \n${user.photoURL ?? 'No photo'}'}');
    return AuthUserResponse(
      uid: user.uid,
      name: user.displayName,
      email: user.email,
      avatarUrl: user.photoURL,
    );
  }
}

extension AuthUserResponseMapper on AuthUserResponse {
  AuthUser toDomain( ) {
    return AuthUser(
      id: uid,
      name: name,
      email: email,
      avatarUrl: avatarUrl,
    );
  }
}
