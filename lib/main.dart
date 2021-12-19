// import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:page_transition/page_transition.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Clean Code',
//         home: AnimatedSplashScreen(
//             duration: 3000,
//             splash: Icons.home,
//             nextScreen: MainScreen(),
//             splashTransition: SplashTransition.fadeTransition,
//             pageTransitionType: PageTransitionType.scale,
//             backgroundColor: Colors.blue
//         )
//     );
//   }
// }
//
// class MainScreen extends StatefulWidget {
//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }
//
// class _MainScreenState extends State<MainScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200,
//       width: 200,
//       child: const Text("walaa"),
//     );
//   }
// }

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tour/screens/welcoming/login.dart';

import 'screens/home_screen.dart';
import 'screens/welcoming/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => VideoApp())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xfff3b3ae),
        child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}
