import 'package:flutter/material.dart';
import 'package:voicenewsapp/screens/splashscreen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
void main() {
  runApp(
    const ProviderScope(child: MyApp())
    
    );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Voice News App',
      home:Splashscreen(),
      debugShowCheckedModeBanner:false, 
    );
  }
}
