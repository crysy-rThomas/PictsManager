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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDbbWaVb6Z5W_6mzBESI1-lcPg43dX4knU',
    appId: '1:810831811982:android:98ba4df2eafc92c877c0df',
    messagingSenderId: '810831811982',
    projectId: 'picts-manager-lf5qjh',
    storageBucket: 'picts-manager-lf5qjh.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDLlLUydCWv6lV3RKE9TfufekIf-RpPL34',
    appId: '1:810831811982:ios:dc661e9b7207e0ee77c0df',
    messagingSenderId: '810831811982',
    projectId: 'picts-manager-lf5qjh',
    storageBucket: 'picts-manager-lf5qjh.appspot.com',
    androidClientId: '810831811982-2nkofj0aun0dd86sf43or019e0r2ksoe.apps.googleusercontent.com',
    iosClientId: '810831811982-7j9lqht8274krjjk35ckj6v9qanuptgq.apps.googleusercontent.com',
    iosBundleId: 'com.pictentrepriseepitech.pictsmanager',
  );
}