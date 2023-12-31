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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAfxTKZSMJuPWSmFnSKcPdS3qFDhTZu4_w',
    appId: '1:21603549039:web:d946726ca8fa042accb29a',
    messagingSenderId: '21603549039',
    projectId: 'whats-65f73',
    authDomain: 'whats-65f73.firebaseapp.com',
    storageBucket: 'whats-65f73.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBHDaLS90jxkjBEcX3cqN54zn1Zo6JmQC8',
    appId: '1:21603549039:android:d27fccd5bb52b25dccb29a',
    messagingSenderId: '21603549039',
    projectId: 'whats-65f73',
    storageBucket: 'whats-65f73.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDF-S3yJpSrfVldUFT7sn19M4iDzhi-Tx0',
    appId: '1:21603549039:ios:bdfc5bcbfef411cfccb29a',
    messagingSenderId: '21603549039',
    projectId: 'whats-65f73',
    storageBucket: 'whats-65f73.appspot.com',
    iosBundleId: 'com.example.chat',
  );
}
