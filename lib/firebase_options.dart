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
    apiKey: 'AIzaSyAnmj7RJu9_Isjg33fCTsLsXNusfpWnOPk',
    appId: '1:608420338462:web:de402314f3875d746b470f',
    messagingSenderId: '608420338462',
    projectId: 'chat-app-91239',
    authDomain: 'chat-app-91239.firebaseapp.com',
    storageBucket: 'chat-app-91239.appspot.com',
    measurementId: 'G-ENLBFS5VNN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDpDVzYjoXNUSA_MLkJs9AU5vMexUebziw',
    appId: '1:608420338462:android:6e86998084e7b3086b470f',
    messagingSenderId: '608420338462',
    projectId: 'chat-app-91239',
    storageBucket: 'chat-app-91239.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCvNwGU4dbUwXKSfo8TglmHQkfl594XyP8',
    appId: '1:608420338462:ios:24a35114b893f69f6b470f',
    messagingSenderId: '608420338462',
    projectId: 'chat-app-91239',
    storageBucket: 'chat-app-91239.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCvNwGU4dbUwXKSfo8TglmHQkfl594XyP8',
    appId: '1:608420338462:ios:24a35114b893f69f6b470f',
    messagingSenderId: '608420338462',
    projectId: 'chat-app-91239',
    storageBucket: 'chat-app-91239.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAnmj7RJu9_Isjg33fCTsLsXNusfpWnOPk',
    appId: '1:608420338462:web:a9d6ea45a98af52d6b470f',
    messagingSenderId: '608420338462',
    projectId: 'chat-app-91239',
    authDomain: 'chat-app-91239.firebaseapp.com',
    storageBucket: 'chat-app-91239.appspot.com',
    measurementId: 'G-P38GTDVSQ3',
  );
}
