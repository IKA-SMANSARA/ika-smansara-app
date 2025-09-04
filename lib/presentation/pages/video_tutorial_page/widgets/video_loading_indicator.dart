import 'package:flutter/material.dart';

class VideoLoadingIndicator extends StatelessWidget {
  const VideoLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.white,
      ),
    );
  }
}