import 'package:flutter/material.dart';
import './sensors.dart';
import './data.dart';
import './usage.dart';
import './home.dart';
import './splash.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: AnimatedSplashScreen(
            splash: 'assets/splashdrop.png',
            nextScreen: Splash(),
            splashTransition: SplashTransition.fadeTransition,
            //pageTransitionType: PageTransitionType.uptoDown,
            backgroundColor: Colors.blue.shade300));
  }
}
