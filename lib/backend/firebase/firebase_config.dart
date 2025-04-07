import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB4DNLkiIB0GhJ66ylIly--PacWwVqzkXo",
            authDomain: "unimar-ead-foto.firebaseapp.com",
            projectId: "unimar-ead-foto",
            storageBucket: "unimar-ead-foto.firebasestorage.app",
            messagingSenderId: "470825851881",
            appId: "1:470825851881:web:3f2a4a40e5273d7c560978"));
  } else {
    await Firebase.initializeApp();
  }
}
