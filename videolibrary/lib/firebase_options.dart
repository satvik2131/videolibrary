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
    apiKey: 'AIzaSyAI1w-3Q4dVIOxAuQmZslrz3pNYYs54QWs',
    appId: '1:706053817811:web:61bbef6455132c285d5b26',
    messagingSenderId: '706053817811',
    projectId: 'videolibrary-2379d',
    authDomain: 'videolibrary-2379d.firebaseapp.com',
    storageBucket: 'videolibrary-2379d.appspot.com',
    measurementId: 'G-WCJ73KPLBC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyASnpZMxwibRTpaSF2LTYhCJTDNQNK8cGE',
    appId: '1:706053817811:android:9aef3af85440d0675d5b26',
    messagingSenderId: '706053817811',
    projectId: 'videolibrary-2379d',
    storageBucket: 'videolibrary-2379d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAcrtcNhw2Pl5qglXTJraCGP0jzlvlv1wo',
    appId: '1:706053817811:ios:a6ee03e1e9f490d75d5b26',
    messagingSenderId: '706053817811',
    projectId: 'videolibrary-2379d',
    storageBucket: 'videolibrary-2379d.appspot.com',
    androidClientId: '706053817811-3jj8o16harc2ipeda9iprj26r70bd17t.apps.googleusercontent.com',
    iosClientId: '706053817811-trvp208v9tm8lscot4p56b4dhg2pvrra.apps.googleusercontent.com',
    iosBundleId: 'videolibrary.videolibrary',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAcrtcNhw2Pl5qglXTJraCGP0jzlvlv1wo',
    appId: '1:706053817811:ios:a6ee03e1e9f490d75d5b26',
    messagingSenderId: '706053817811',
    projectId: 'videolibrary-2379d',
    storageBucket: 'videolibrary-2379d.appspot.com',
    androidClientId: '706053817811-3jj8o16harc2ipeda9iprj26r70bd17t.apps.googleusercontent.com',
    iosClientId: '706053817811-trvp208v9tm8lscot4p56b4dhg2pvrra.apps.googleusercontent.com',
    iosBundleId: 'videolibrary.videolibrary',
  );
}
