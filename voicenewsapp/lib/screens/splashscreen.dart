import 'package:flutter/material.dart';
import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:voicenewsapp/screens/homescreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: AnimatedSplashScreen(
      splash:Image.asset('assets/newslogo.png'), 
      nextScreen: HomeScreen(),
      splashTransition: SplashTransition.fadeTransition,
      duration: 3000,
      ),
    );
  }
}