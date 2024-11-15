
import 'package:flutter/material.dart';

Padding infoContainer({
  required BuildContext context,
  required String username,
  required int com,
  required String likes,
  required String url,
}) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 700,
                ),
                Row(
                  children: [

                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      username,
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '    The Most Satisfying❤️😊',
                  style: TextStyle(color: Colors.white,fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 500,
                ),

                // Consumer<LikeProvider>(
                //   builder: (context, likeProvider, child) {
                //     return GestureDetector(
                //       onTap: () {
                //         likeProvider.toggleLike();
                //       },
                //       child: Icon(
                //         likeProvider.isLiked
                //             ? Icons.favorite
                //             : Icons.favorite_border,
                //         size: 30,
                //         color: likeProvider.isLiked ? Colors.red : null,
                //       ),
                //     );
                //   },
                // ),
                Text(
                  '$likes',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 25,
                ),
                Icon(
                  Icons.comment_outlined,
                  color: Colors.white,
                  size: 33,
                ),
                Text(
                  '$com',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 25,
                ),
                Transform(
                  transform: Matrix4.rotationZ(5.8),
                  child: InkWell(
                    onTap: () {
                      // Provider.of<ShareProvider>(context, listen: false)
                      //     .shareReel(video);
                    },
                    child: Icon(Icons.send,size: 30,
                      color: Colors.white,),
                  ),
                ),
                Text(
                  'Share',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),

              ],
            )
          ],
        ),
      ],
    ),
  );
}