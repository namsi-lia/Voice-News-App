import 'package:flutter/material.dart';
import 'package:voicenewsapp/screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Voice News App',
      debugShowCheckedModeBanner:false,
     
       home:Splashscreen(),
    );
  }
}
