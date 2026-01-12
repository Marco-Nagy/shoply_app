import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:shoply/core/app/Networking/errors/error_handler.dart';

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
      return "An unknown error occurred. Please check your internet connection and try again.";
    }
  }

  /// Handles Authentication Errors (Includes Social Auth conflicts)
  static String _getAuthErrorMessage(FirebaseAuthException e) {
    switch (e.code) {
      // --- Generic Auth ---
      case 'invalid-email':
        return "The email address is badly formatted.";
      case 'user-disabled':
        return "This user has been disabled. Please contact support.";
      case 'user-not-found':
        return "No user found for that email.";
      case 'wrong-password':
        return "Wrong password provided.";

      // --- Social Auth Specifics ---
      case 'account-exists-with-different-credential':
        // **Critical for Social Auth**: Occurs when a user tries to sign in with
        // Facebook/Apple but already has a Password/Google account with the same email.
        return "An account already exists with the same email address but different sign-in credentials. Please sign in with your original provider.";

      case 'credential-already-in-use':
        // Occurs when linking a social account (e.g., linking Google to existing Email user)
        // and that Google account is already used by someone else.
        return "This account credential is already associated with another user account.";

      case 'popup-closed-by-user':
        return "Sign-in popup was closed before completion.";

      case 'cancelled-popup-request':
        return "Only one popup request is allowed at one time.";

      // --- Security & Network ---
      case 'operation-not-allowed':
        return "This sign-in method is not enabled. Please contact support.";
      case 'network-request-failed':
        return "Network error. Please check your connection.";
      case 'too-many-requests':
        return "Too many requests. Try again later.";

      default:
        return "Authentication Error: ${e.message ?? "Unknown error"}";
    }
  }

  /// Handles Firestore (Database) Errors
  static String _getFirestoreErrorMessage(FirebaseException e) {
    switch (e.code) {
      case 'permission-denied':
        return "You do not have permission to access this data.";
      case 'unavailable':
        return "The service is currently unavailable. Check internet connection.";
      case 'not-found':
        return "The requested document was not found.";
      case 'already-exists':
        return "The document already exists.";
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
        return "Google Sign-In was cancelled.";
      case 'network_error':
        return "Network error occurred during Google Sign-In.";

      // --- Facebook Login ---
      case 'CANCELLED':
      case 'cancelled': // flutter_facebook_auth often returns this
        return "Facebook Login was cancelled.";
      case 'FAILED':
      case 'failed':
        return "Facebook Login failed. Please try again.";

      // --- Apple Sign In ---
      case 'AuthorizationErrorCode.canceled': // iOS native code
      case '1001': // Common iOS error code for cancellation
        return "Apple Sign-In was cancelled.";
      case 'AuthorizationErrorCode.unknown':
      case '1000':
        return "Apple Sign-In failed due to an unknown error.";

      // --- Generic ---
      case 'sign_in_failed':
        return "Sign in failed. Please try again.";
      default:
        // Strip technical prefixes if possible to make it cleaner
        return "System Error: ${e.message?.replaceAll("Exception:", "") ?? "Unknown platform error"}";
    }
  }
}
