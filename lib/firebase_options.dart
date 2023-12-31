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
    apiKey: 'AIzaSyBF-G73Ir7W_fNGsjZpkuiHPKo2ZjJgdGg',
    appId: '1:1750128794:web:74030abce6e80c91cea723',
    messagingSenderId: '1750128794',
    projectId: 'trspe-bec09',
    authDomain: 'trspe-bec09.firebaseapp.com',
    databaseURL: 'https://trspe-bec09-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'trspe-bec09.appspot.com',
    measurementId: 'G-YN9LKL76MH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBI7gMtmCqj6owIiOOyap1bZOyLEbzuEAw',
    appId: '1:1750128794:android:5b546f287a31aa6ccea723',
    messagingSenderId: '1750128794',
    projectId: 'trspe-bec09',
    databaseURL: 'https://trspe-bec09-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'trspe-bec09.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCCf5ySNp4R1_fo_a_AyqjVzzwhTM-bxgg',
    appId: '1:1750128794:ios:f8621f7e1f4c7439cea723',
    messagingSenderId: '1750128794',
    projectId: 'trspe-bec09',
    databaseURL: 'https://trspe-bec09-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'trspe-bec09.appspot.com',
    iosClientId: '1750128794-4477ik6eqmd7djlltbuq3fng164eviri.apps.googleusercontent.com',
    iosBundleId: 'com.example.wqmapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCCf5ySNp4R1_fo_a_AyqjVzzwhTM-bxgg',
    appId: '1:1750128794:ios:afbcaa7846ac89f1cea723',
    messagingSenderId: '1750128794',
    projectId: 'trspe-bec09',
    databaseURL: 'https://trspe-bec09-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'trspe-bec09.appspot.com',
    iosClientId: '1750128794-psh22otfn17a9c30gtpmghvmv4a82bt6.apps.googleusercontent.com',
    iosBundleId: 'com.example.wqmapp.RunnerTests',
  );
}
