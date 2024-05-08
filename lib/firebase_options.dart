// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCfbZcnDOZ_ZPTIaVXWYAmlyZZQ05_fBE8',
    appId: '1:961115936061:web:cae5af827f097aa7f62154',
    messagingSenderId: '961115936061',
    projectId: 'shoply-6e93b',
    authDomain: 'shoply-6e93b.firebaseapp.com',
    storageBucket: 'shoply-6e93b.appspot.com',
    measurementId: 'G-SDCV3PEF5R',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDxE5FrvTLHYl0aWXNnYRhyrtzvU4wIExA',
    appId: '1:961115936061:android:9565cf7e9f368acbf62154',
    messagingSenderId: '961115936061',
    projectId: 'shoply-6e93b',
    storageBucket: 'shoply-6e93b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyALQ-ulNIxnvztHgzc6iMdahzlfGyggIDo',
    appId: '1:961115936061:ios:825907a0ab7343a2f62154',
    messagingSenderId: '961115936061',
    projectId: 'shoply-6e93b',
    storageBucket: 'shoply-6e93b.appspot.com',
    iosBundleId: 'com.marcosoft.shoply',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyALQ-ulNIxnvztHgzc6iMdahzlfGyggIDo',
    appId: '1:961115936061:ios:825907a0ab7343a2f62154',
    messagingSenderId: '961115936061',
    projectId: 'shoply-6e93b',
    storageBucket: 'shoply-6e93b.appspot.com',
    iosBundleId: 'com.marcosoft.shoply',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCfbZcnDOZ_ZPTIaVXWYAmlyZZQ05_fBE8',
    appId: '1:961115936061:web:3024f7e6b70f3174f62154',
    messagingSenderId: '961115936061',
    projectId: 'shoply-6e93b',
    authDomain: 'shoply-6e93b.firebaseapp.com',
    storageBucket: 'shoply-6e93b.appspot.com',
    measurementId: 'G-3CMDY7TCK1',
  );
}
