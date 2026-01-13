import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:shoply/core/app/Networking/errors/error_handler.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/helpers/extension/string_exetension.dart';

class FirebaseErrorHandler extends ErrorHandler {
  FirebaseErrorHandler(super.errorMsg);

  factory FirebaseErrorHandler.fromException(Object error) {
    return FirebaseErrorHandler(getMessage(error));
  }

  /// The main method to get a readable error message.
  static String getMessage(Object error) {
    if (error is FirebaseAuthException) {
      return _getAuthErrorMessage(error);
    } else if (error is FirebaseException) {
      return _getFirestoreErrorMessage(error);
    } else if (error is PlatformException) {
      return _getPlatformErrorMessage(error);
    } else {
      return LangKeys.errorUnknown.toTranslate();
    }
  }

  /// Handles Authentication Errors (Includes Social Auth conflicts)
  static String _getAuthErrorMessage(FirebaseAuthException e) {
    switch (e.code) {
      // --- Generic Auth ---
      case 'invalid-email':
        return LangKeys.errorInvalidEmail.toTranslate();
      case 'user-disabled':
        return LangKeys.errorUserDisabled.toTranslate();
      case 'user-not-found':
        return LangKeys.errorUserNotFound.toTranslate();
      case 'wrong-password':
        return LangKeys.errorWrongPassword.toTranslate();

      // --- Social Auth Specifics ---
      case 'account-exists-with-different-credential':
        // **Critical for Social Auth**: Occurs when a user tries to sign in with
        // Facebook/Apple but already has a Password/Google account with the same email.
        return LangKeys.errorAccountExistsDifferentCredential.toTranslate();

      case 'credential-already-in-use':
        // Occurs when linking a social account (e.g., linking Google to existing Email user)
        // and that Google account is already used by someone else.
        return LangKeys.errorCredentialInUse.toTranslate();

      case 'popup-closed-by-user':
        return LangKeys.errorPopupClosed.toTranslate();

      case 'cancelled-popup-request':
        return LangKeys.errorPopupCancelled.toTranslate();

      // --- Security & Network ---
      case 'operation-not-allowed':
        return LangKeys.errorOperationNotAllowed.toTranslate();
      case 'network-request-failed':
        return LangKeys.errorNetworkFailed.toTranslate();
      case 'too-many-requests':
        return LangKeys.errorTooManyRequests.toTranslate();

      default:
        return "Authentication Error: ${e.message ?? "Unknown error"}";
    }
  }

  /// Handles Firestore (Database) Errors
  static String _getFirestoreErrorMessage(FirebaseException e) {
    switch (e.code) {
      case 'permission-denied':
        return LangKeys.errorPermissionDenied.toTranslate();
      case 'unavailable':
        return LangKeys.errorServiceUnavailable.toTranslate();
      case 'not-found':
        return LangKeys.errorDocumentNotFound.toTranslate();
      case 'already-exists':
        return LangKeys.errorDocumentExists.toTranslate();
      default:
        return "Database Error: ${e.message ?? "Unknown error"}";
    }
  }

  /// Handles Platform Exceptions (Google/Apple/Facebook Native SDK errors)
  static String _getPlatformErrorMessage(PlatformException e) {
    // These codes often come from the specific packages:
    // google_sign_in, flutter_facebook_auth, sign_in_with_apple
    switch (e.code) {
      // --- Google Sign In ---
      case 'sign_in_canceled':
        return LangKeys.errorGoogleSignInCancelled.toTranslate();
      case 'network_error':
        return LangKeys.errorGoogleNetworkError.toTranslate();

      // --- Facebook Login ---
      case 'CANCELLED':
      case 'cancelled': // flutter_facebook_auth often returns this
        return LangKeys.errorFacebookCancelled.toTranslate();
      case 'FAILED':
      case 'failed':
        return LangKeys.errorFacebookFailed.toTranslate();

      // --- Apple Sign In ---
      case 'AuthorizationErrorCode.canceled': // iOS native code
      case '1001': // Common iOS error code for cancellation
        return LangKeys.errorAppleCancelled.toTranslate();
      case 'AuthorizationErrorCode.unknown':
      case '1000':
        return LangKeys.errorAppleUnknown.toTranslate();

      // --- Generic ---
      case 'sign_in_failed':
        return LangKeys.errorSignInFailed.toTranslate();
      default:
        // Strip technical prefixes if possible to make it cleaner
        return "System Error: ${e.message?.replaceAll("Exception:", "") ?? "Unknown platform error"}";
    }
  }
}
