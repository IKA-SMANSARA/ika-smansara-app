import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerContainer extends StatelessWidget {
  final VideoPlayerController controller;
  final bool isInitialized;

  const VideoPlayerContainer({
    super.key,
    required this.controller,
    required this.isInitialized,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: isInitialized
          ? FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: VideoPlayer(controller),
              ),
            )
          : const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
    );
  }
}