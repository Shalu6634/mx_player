import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 160,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.sftcdn.net/images/t_app-icon-m/p/18838e7e-3026-4425-8b6c-a4be4be52ddd/1059009873/u-music-mp3-player-logo'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
