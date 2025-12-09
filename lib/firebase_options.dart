// FILE: firebase_options.dart
// NOTE: GANTI semua YOUR_XXXX dengan nilai dari Firebase Console

import 'package:firebase_core/firebase_core.dart'
    show FirebaseOptions, FirebaseApp;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  // -----------------------------
  // 🌐 WEB CONFIGURATION

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDJs4JMsOBkcS1L2VosQOM8zc7eNkjkL8s',
    appId: '1:825114806742:web:e4e9ab0925c73053ef3c77',
    messagingSenderId: '825114806742',
    projectId: 'mobile4-ab637',
    authDomain: 'mobile4-ab637.firebaseapp.com',
    storageBucket: 'mobile4-ab637.firebasestorage.app',
    measurementId: 'G-QTWXCLPQZ4',
  );

  // -----------------------------

  // -----------------------------
  // 🤖 ANDROID CONFIGURATION

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAIWCpq9tMmarep7RWVBc53CdGL7KKepKs',
    appId: '1:825114806742:android:a8e20fe9d8d1815bef3c77',
    messagingSenderId: '825114806742',
    projectId: 'mobile4-ab637',
    storageBucket: 'mobile4-ab637.firebasestorage.app',
  );

  // -----------------------------
}