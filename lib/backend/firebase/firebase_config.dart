import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCOByZcCpuHGvjDZ4Yt0zQsaOy0UfI7sFs",
            authDomain: "todo-g5jcnn.firebaseapp.com",
            projectId: "todo-g5jcnn",
            storageBucket: "todo-g5jcnn.firebasestorage.app",
            messagingSenderId: "406015264822",
            appId: "1:406015264822:web:637f5c7a835a1e51d53097",
            measurementId: "G-Z7C13SQZP2"));
  } else {
    await Firebase.initializeApp();
  }
}
