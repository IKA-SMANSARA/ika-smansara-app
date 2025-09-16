import 'package:flutter/material.dart';

class PlayPauseOverlay extends StatelessWidget {
  final bool isPlaying;
  final VoidCallback onPressed;

  const PlayPauseOverlay({
    super.key,
    required this.isPlaying,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black54,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        iconSize: 80,
        icon: Icon(
          isPlaying ? Icons.pause : Icons.play_arrow,
          color: Colors.white,
        ),
        onPressed: onPressed,
      ),
    );
  }
}