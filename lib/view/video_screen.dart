import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'component/box1.dart';

class VideoScreen extends StatefulWidget {
  final String url;
  final String username;
  final int comments;
  final String likes;

  const VideoScreen(
      {required this.url,
      required this.username,
      required this.comments,
      required this.likes,
      super.key});



  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  VideoPlayerController? _videoPlayerController;
  ChewieController? _chewieController;

  @override
  void initState() {
    initializePlayer();
    super.initState();
  }

  void initializePlayer() {
    _videoPlayerController = VideoPlayerController.asset(widget.url);
    print('-----------------------------------------------------');
    print(_videoPlayerController);
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController!,
      autoPlay: true,
      looping: true,
      allowMuting: true,

    );
    _videoPlayerController!.initialize().then(
      (value) {
        setState(() {});
      },
    );
    setState(() {});
  }

  @override
  void dispose() {
    _videoPlayerController!.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        _chewieController != null &&
                _chewieController!.videoPlayerController.value.isInitialized
            ? Chewie(
                controller: ChewieController(
                videoPlayerController: _videoPlayerController!,
                // other configurations
              ))
            : SizedBox(),
        SizedBox(
          height: 560,
        ),
        infoContainer(
          context: context,
          username: widget.username,
          com: widget.comments,
          likes: widget.likes,
          url: widget.url,
        ),
      ],
    );
  }
}
