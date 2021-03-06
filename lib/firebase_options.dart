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
    apiKey: 'AIzaSyB7P-KbOk2NBFvTYd87G6l8nVu5HrwAVQk',
    appId: '1:943210984347:web:c173040670a16211a8a73e',
    messagingSenderId: '943210984347',
    projectId: 'borrow-buddy-5da10',
    authDomain: 'borrow-buddy-5da10.firebaseapp.com',
    storageBucket: 'borrow-buddy-5da10.appspot.com',
    measurementId: 'G-1RYENBSGG0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCXHujAYPh2-OVTTaP5dAhVh8vpnjfISNc',
    appId: '1:943210984347:android:4c8a23bfb2fb7b52a8a73e',
    messagingSenderId: '943210984347',
    projectId: 'borrow-buddy-5da10',
    storageBucket: 'borrow-buddy-5da10.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBMvPP6DOS5Xe1NVyRXmp-EFaIXx_SvIY0',
    appId: '1:943210984347:ios:3562c7a5f59c0767a8a73e',
    messagingSenderId: '943210984347',
    projectId: 'borrow-buddy-5da10',
    storageBucket: 'borrow-buddy-5da10.appspot.com',
    iosClientId: '943210984347-rngbqopt2jp7v95ddkv4sam0808c6ehv.apps.googleusercontent.com',
    iosBundleId: 'com.devs.buddyborrow',
  );
}
