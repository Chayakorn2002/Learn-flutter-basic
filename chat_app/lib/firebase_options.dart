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
    apiKey: 'AIzaSyDKnuVP5PtcPfqZ2D_JeVpZSjYP9zqJQBI',
    appId: '1:193395622192:android:02fe91f9ddb38ecf26c8f5',
    messagingSenderId: '193395622192',
    projectId: 'flutter-chat-app-e1c7e',
    storageBucket: 'flutter-chat-app-e1c7e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBEc59Fmw2h-Ndunhm53adfdhH9AlNh0ko',
    appId: '1:193395622192:ios:75dc594943ecb4c426c8f5',
    messagingSenderId: '193395622192',
    projectId: 'flutter-chat-app-e1c7e',
    storageBucket: 'flutter-chat-app-e1c7e.appspot.com',
    iosClientId: '193395622192-v6i4a2hjpfpt4qg6nlh53bmkfpj90fp2.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );
}
