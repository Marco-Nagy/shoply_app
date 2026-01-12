
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shoply/features/auth/data/models/auth_user_response.dart';
import 'package:shoply/features/auth/domain/entities/auth_user.dart';

class AuthMappers {
 static AuthUserResponse mapGoogleUserToDomain(GoogleSignInAccount googleUser) {
    return AuthUserResponse(
      uid: googleUser.id,
      name: googleUser.displayName,
      email: googleUser.email,
      avatarUrl: googleUser.photoUrl,
    );
  }
  static AuthUserResponse mapGmailUserToDomain(UserCredential googleUser) {
    final user = googleUser.user;
    if (user == null) {
      throw Exception('Firebase user is null after sign-in');
    }
    debugPrint(' User logged ${
    '${user.uid} ${user.displayName ?? 'No name'}\n ${user.email ?? 'No email'} \n${user.photoURL ?? 'No photo'}'
    }');
    return AuthUserResponse(
      uid: user.uid,
      name: user.displayName,
      email: user.email,
      avatarUrl: user.photoURL,
    );
  }
  static AuthUserResponse mapFacebookUserToDomain(Map<String, dynamic> data) {
    return AuthUserResponse(
      uid: data['id']?.toString() ?? '',
      name: data['name'] as String?,
      email: data['email'] as String?,
      avatarUrl: (data['picture']?['data']?['url']) as String?,
    );
  }

}


extension AuthUserResponseMapper on AuthUserResponse {
  AuthUser toDomain() {
    return AuthUser(
      id: uid,
      name: name,
      email: email,
      avatarUrl: avatarUrl,
    );
  }
}
