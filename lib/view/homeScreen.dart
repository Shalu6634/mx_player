import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:mx_player/view/video_screen.dart';

import '../utils/list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {




    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Swiper(
              itemBuilder: (BuildContext context, int index) {
                print('---===================================================');
                print(videoList[index]['video']);

                String url = videoList[index]['video'];
                return VideoScreen(
                  url: url,
                  username: videoList[index]['username'],
                  comments: videoList[index]['comments'],
                  likes: videoList[index]['likes'],
                );
              },
              itemCount: videoList.length,
              scrollDirection: Axis.vertical,
            ),

          ],
        ),
      ),
      bottomNavigationBar: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.home,
            color: Colors.white,
            size: 28,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
            size: 28,
          ),
          Icon(
            Icons.add_box,
            color: Colors.white,
            size: 28,
          ),
          Icon(
            Icons.inbox,
            color: Colors.white,
            size: 28,
          ),
          Icon(
            Icons.person_2_outlined,
            color: Colors.white,
            size: 28,
          ),
        ],
      ),
    );
  }
}
