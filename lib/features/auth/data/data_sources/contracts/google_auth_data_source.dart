// lib/data/auth/google_auth_data_source.dart

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:shoply/features/auth/data/mappers/auth_mappers.dart';
import 'package:shoply/features/auth/data/models/auth_user_response.dart';

@lazySingleton
class GoogleAuthDataSource {
  final GoogleSignIn _googleSignIn;

  GoogleAuthDataSource()
      : _googleSignIn = GoogleSignIn();

  Future<AuthUserResponse?> signIn() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) return null;

      final GoogleSignInAuthentication googleAuth =
      await googleUser.authentication;

      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final user =
      await FirebaseAuth.instance.signInWithCredential(credential);

      return AuthMappers.mapGmailUserToDomain(user);
    } catch (e) {
      if (e is PlatformException) {
        throw GoogleSignInFailedException(
          message:
          "Google Sign In Failed ${e.code} ${e.message ?? 'Platform Error'}",
        );
      } else {
        throw GoogleSignInFailedException(message: e.toString());
      }
    }
  }
}


class GoogleSignInCancelledException implements Exception {
  const GoogleSignInCancelledException();

  @override
  String toString() => "google_sign_in_cancelled";
}

class GoogleSignInFailedException implements Exception {
  final String message;

  GoogleSignInFailedException({required this.message});

  @override
  String toString() => "google_sign_in_failed: $message";
}



