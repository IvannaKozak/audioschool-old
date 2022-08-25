import 'package:flutter/material.dart';
import 'package:audioschool/screens/main_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:audioschool/screens/loading_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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

// SplashScreen(
//           seconds: 5,
//           navigateAfterSeconds: MainScreen(),
//           title: const Text(
//             'AudioSchool',
//             style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.w900,
//                 fontSize: 30.0),
//           ),
//           image: SvgPicture.asset(_assetNames),
//           backgroundColor: const Color(0xFF213d6e),
//           //useLoader: SpinKitCircle(),
//           loaderColor: Colors.white,
//         )