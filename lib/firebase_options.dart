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
    apiKey: 'AIzaSyDV3cM5wyLn_52MFGwgv44-pi8IC4M2b8k',
    appId: '1:435573204132:web:40664b2d83ad259b00b231',
    messagingSenderId: '435573204132',
    projectId: 'riverpod-auth-381a9',
    authDomain: 'riverpod-auth-381a9.firebaseapp.com',
    storageBucket: 'riverpod-auth-381a9.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAnvLfSgMEEbGDVfJaLE8hFKYmE_e2MnjI',
    appId: '1:435573204132:android:00c1e12c7f37aa4c00b231',
    messagingSenderId: '435573204132',
    projectId: 'riverpod-auth-381a9',
    storageBucket: 'riverpod-auth-381a9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDtQFi9DWqfSMcsWRP6MfrBQNH1BfexwSY',
    appId: '1:435573204132:ios:4b4c97c4393980da00b231',
    messagingSenderId: '435573204132',
    projectId: 'riverpod-auth-381a9',
    storageBucket: 'riverpod-auth-381a9.appspot.com',
    iosClientId: '435573204132-51c4v36keiu5445m9ig5bjfukfh7oqck.apps.googleusercontent.com',
    iosBundleId: 'com.example.riverpodAuth',
  );
}
