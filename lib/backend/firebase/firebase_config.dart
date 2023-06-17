import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyALbFFTbgd0svyiqpkeyqTaOiRNF24iE8w",
            authDomain: "break-the-app.firebaseapp.com",
            projectId: "break-the-app",
            storageBucket: "break-the-app.appspot.com",
            messagingSenderId: "570146317436",
            appId: "1:570146317436:web:eeb2b9037f1c2b92b4d5f9",
            measurementId: "G-ZZ484GP6FQ"));
  } else {
    await Firebase.initializeApp();
  }
}
