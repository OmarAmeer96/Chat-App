// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDxe65d2_iH0VkJyuXGCn2yhpKVp17mSF0',
    appId: '1:996203001226:web:64c4359bc818c407b5c473',
    messagingSenderId: '996203001226',
    projectId: 'chat-app-b2137',
    authDomain: 'chat-app-b2137.firebaseapp.com',
    storageBucket: 'chat-app-b2137.appspot.com',
    measurementId: 'G-4L0LR8SDYH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCYHMyQCSsaEdH64ZMOMtKvjjAo94MbUnI',
    appId: '1:996203001226:android:2fa95c94b66d3c70b5c473',
    messagingSenderId: '996203001226',
    projectId: 'chat-app-b2137',
    storageBucket: 'chat-app-b2137.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCO2qE6-WjKNoj6kCjUIxT-zShO-A2Dvx0',
    appId: '1:996203001226:ios:064021a34e7742a2b5c473',
    messagingSenderId: '996203001226',
    projectId: 'chat-app-b2137',
    storageBucket: 'chat-app-b2137.appspot.com',
    iosClientId: '996203001226-nnmkqpmq7q4d73d0sen2bvf90cdf2tq2.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCO2qE6-WjKNoj6kCjUIxT-zShO-A2Dvx0',
    appId: '1:996203001226:ios:064021a34e7742a2b5c473',
    messagingSenderId: '996203001226',
    projectId: 'chat-app-b2137',
    storageBucket: 'chat-app-b2137.appspot.com',
    iosClientId: '996203001226-nnmkqpmq7q4d73d0sen2bvf90cdf2tq2.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );
}
