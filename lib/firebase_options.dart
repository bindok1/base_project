// import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
// import 'package:flutter/foundation.dart'
//     show defaultTargetPlatform, kIsWeb, TargetPlatform;

// /// Default [FirebaseOptions] for use with your Firebase apps.
// ///
// /// Example:
// /// ```dart
// /// import 'firebase_options.dart';
// /// // ...
// /// await Firebase.initializeApp(
// ///   options: DefaultFirebaseOptions.currentPlatform,
// /// );
// /// ```
// /// 

// class DefaultFirebaseOptions {
//   static FirebaseOptions get currentPlatform {
//     if (kIsWeb) {
//       return web;
//     }
//     switch (defaultTargetPlatform) {
//       case TargetPlatform.android:
//         return android;
//       case TargetPlatform.iOS:
//         return ios;
//       case TargetPlatform.macOS:
//         return macos;
//       case TargetPlatform.windows:
//         return windows;
//       case TargetPlatform.linux:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for linux - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       default:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions are not supported for this platform.',
//         );
//     }
//   }

//   static const FirebaseOptions web = FirebaseOptions(
//     apiKey: 'AIzaSyCesZAGhHX9sY0lFTT5Ogmy3uvAYCV9b0I',
//     appId: '1:657015730255:web:d5f503d8c3b2068366ba3a',
//     messagingSenderId: '657015730255',
//     projectId: 'bicaro-28eca',
//     authDomain: 'bicaro-28eca.firebaseapp.com',
//     storageBucket: 'bicaro-28eca.appspot.com',
//     measurementId: 'G-EBM1FJMGG0',
//   );

//   static const FirebaseOptions android = FirebaseOptions(
//     apiKey: 'AIzaSyDk-m3aJIrhYzblZ4herlpVH73OxTXQglo',
//     appId: '1:657015730255:android:0c4ef28ed9ac78ca66ba3a',
//     messagingSenderId: '657015730255',
//     projectId: 'bicaro-28eca',
//     storageBucket: 'bicaro-28eca.appspot.com',
//   );

//   static const FirebaseOptions ios = FirebaseOptions(
//     apiKey: 'AIzaSyDzNDeYLGhLO3etC-Tt3Z4O_YWRJ9g2dTA',
//     appId: '1:657015730255:ios:863a7be0594929e466ba3a',
//     messagingSenderId: '657015730255',
//     projectId: 'bicaro-28eca',
//     storageBucket: 'bicaro-28eca.appspot.com',
//     iosBundleId: 'com.example.kiraiSecureMessanger',
//   );

//   static const FirebaseOptions macos = FirebaseOptions(
//     apiKey: 'AIzaSyDzNDeYLGhLO3etC-Tt3Z4O_YWRJ9g2dTA',
//     appId: '1:657015730255:ios:863a7be0594929e466ba3a',
//     messagingSenderId: '657015730255',
//     projectId: 'bicaro-28eca',
//     storageBucket: 'bicaro-28eca.appspot.com',
//     iosBundleId: 'com.example.kiraiSecureMessanger',
//   );

//   static const FirebaseOptions windows = FirebaseOptions(
//     apiKey: 'AIzaSyCesZAGhHX9sY0lFTT5Ogmy3uvAYCV9b0I',
//     appId: '1:657015730255:web:a98934a68e139c9b66ba3a',
//     messagingSenderId: '657015730255',
//     projectId: 'bicaro-28eca',
//     authDomain: 'bicaro-28eca.firebaseapp.com',
//     storageBucket: 'bicaro-28eca.appspot.com',
//     measurementId: 'G-ZXLJ6W1E3N',
//   );

// }