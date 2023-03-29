import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:audioschool/screens/main_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:audioschool/screens/loading_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // await Firebase.initializeApp(
  //   options: const FirebaseOptions(
  //       apiKey: "AIzaSyCzErGIqYGNhTZJbh4DK7jgfCNYYcUvD7o",
  //       authDomain: "growy-185cf.firebaseapp.com",
  //       projectId: "audioschool-765fa",
  //       storageBucket: "growy-185cf.appspot.com",
  //       messagingSenderId: "390146175797",
  //       appId: "1:390146175797:web:b270b566151f4486be527c",
  //       measurementId: "G-6DFE3TJ9JX"),
  //   //     //options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final Future<FirebaseApp> _firebaseInitialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AudioSchool',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoadingScreen(),
    );
  }
}
