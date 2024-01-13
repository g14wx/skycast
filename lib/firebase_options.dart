// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyDtAt1iIN8_XVRZUQU6CXT6-G4fpTl9S2U',
    appId: '1:781967842563:web:0e57f36d2d9e50589c1d36',
    messagingSenderId: '781967842563',
    projectId: 'skycast-d1d93',
    authDomain: 'skycast-d1d93.firebaseapp.com',
    storageBucket: 'skycast-d1d93.appspot.com',
    measurementId: 'G-YMTDQ7ZNNS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCYNjLMvoRtUyLXQ36MdtTr1wKacFVmWmI',
    appId: '1:781967842563:android:3a14b36158f9b1659c1d36',
    messagingSenderId: '781967842563',
    projectId: 'skycast-d1d93',
    storageBucket: 'skycast-d1d93.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBTgbA7VRiPRl7TWDucX6xw4z8WJZZo6yo',
    appId: '1:781967842563:ios:8f28a276e631bbda9c1d36',
    messagingSenderId: '781967842563',
    projectId: 'skycast-d1d93',
    storageBucket: 'skycast-d1d93.appspot.com',
    iosBundleId: 'com.skycast.skycast',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBTgbA7VRiPRl7TWDucX6xw4z8WJZZo6yo',
    appId: '1:781967842563:ios:ffed1a0612e89ce79c1d36',
    messagingSenderId: '781967842563',
    projectId: 'skycast-d1d93',
    storageBucket: 'skycast-d1d93.appspot.com',
    iosBundleId: 'com.skycast.skycast.RunnerTests',
  );
}