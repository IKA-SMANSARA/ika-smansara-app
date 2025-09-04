import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoControlsOverlay extends StatelessWidget {
  final VideoPlayerController controller;
  final bool isPlaying;
  final bool isFullscreen;
  final VoidCallback onPlayPausePressed;
  final VoidCallback onFullscreenPressed;

  const VideoControlsOverlay({
    super.key,
    required this.controller,
    required this.isPlaying,
    required this.isFullscreen,
    required this.onPlayPausePressed,
    required this.onFullscreenPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 20,
      right: 20,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            // Play/Pause Button
            IconButton(
              icon: Icon(
                isPlaying ? Icons.pause : Icons.play_arrow,
                color: Colors.white,
                size: 32,
              ),
              onPressed: onPlayPausePressed,
            ),

            // Progress Bar
            Expanded(
              child: VideoProgressIndicator(
                controller,
                allowScrubbing: true,
                colors: const VideoProgressColors(
                  playedColor: Color(0xFF104993),
                  bufferedColor: Colors.white54,
                  backgroundColor: Colors.white24,
                ),
              ),
            ),

            // Fullscreen Button
            IconButton(
              icon: Icon(
                isFullscreen ? Icons.fullscreen_exit : Icons.fullscreen,
                color: Colors.white,
              ),
              onPressed: onFullscreenPressed,
            ),
          ],
        ),
      ),
    );
  }
}