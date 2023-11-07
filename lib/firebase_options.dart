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
    apiKey: 'AIzaSyBOhx9aEYscbbK1X5e4ijoCqJ-GumWV5Tk',
    appId: '1:561925801883:web:f208d1e4f51b53a586033e',
    messagingSenderId: '561925801883',
    projectId: 'coffee-land-v2',
    authDomain: 'coffee-land-v2.firebaseapp.com',
    storageBucket: 'coffee-land-v2.appspot.com',
    measurementId: 'G-NHQWHXCLJN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBlF2Yw491jvzrTkHAekZq6GtFVmpjG01o',
    appId: '1:561925801883:android:a896ad6c17b9760986033e',
    messagingSenderId: '561925801883',
    projectId: 'coffee-land-v2',
    storageBucket: 'coffee-land-v2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBbv5a-DfwEuSiJGfTmviptq2n5Jf07cJ8',
    appId: '1:561925801883:ios:037cc5295b55c31a86033e',
    messagingSenderId: '561925801883',
    projectId: 'coffee-land-v2',
    storageBucket: 'coffee-land-v2.appspot.com',
    iosBundleId: 'com.example.coffeeApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBbv5a-DfwEuSiJGfTmviptq2n5Jf07cJ8',
    appId: '1:561925801883:ios:e279cd833200c94986033e',
    messagingSenderId: '561925801883',
    projectId: 'coffee-land-v2',
    storageBucket: 'coffee-land-v2.appspot.com',
    iosBundleId: 'com.example.coffeeApp.RunnerTests',
  );
}