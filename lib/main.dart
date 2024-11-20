import 'package:flutter/material.dart';
import 'package:mx_player/view/Splash_screen.dart';
import 'package:mx_player/view/homeScreen.dart';
import 'package:mx_player/view/video_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/home':(context)=>HomeScreen(),
        '/':(context)=>SplashScreen(),
      },
    );
  }
}
