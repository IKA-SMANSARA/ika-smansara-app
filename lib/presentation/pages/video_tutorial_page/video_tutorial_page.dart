import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'methods/video_methods.dart';
import 'widgets/play_pause_overlay.dart';
import 'widgets/video_controls_overlay.dart';
import 'widgets/video_player_container.dart';
import 'widgets/tap_hint_overlay.dart';

class VideoTutorialPage extends StatefulWidget {
  const VideoTutorialPage({super.key});

  @override
  State<VideoTutorialPage> createState() => _VideoTutorialPageState();
}

class _VideoTutorialPageState extends State<VideoTutorialPage> {
  late VideoPlayerController _videoPlayerController;
  bool _isPlaying = false;
  bool _isInitialized = false;
  bool _showControls = true;
  bool _isFullscreen = false;

  @override
  void initState() {
    super.initState();
    _initializeVideo();
    _startHideControlsTimer();
  }

  void _initializeVideo() {
    _videoPlayerController = VideoPlayerController.asset(
      'assets/images/tutorial.mp4',
    );

    VideoMethods.initializeVideo(
      _videoPlayerController,
      () => setState(() => _isInitialized = true),
    );

    VideoMethods.setupVideoListener(
      _videoPlayerController,
      (isPlaying) => setState(() => _isPlaying = isPlaying),
    );
  }

  void _startHideControlsTimer() {
    VideoMethods.startHideControlsTimer(
      _isPlaying,
      () => setState(() => _showControls = false),
    );
  }

  void _togglePlayPause() {
    VideoMethods.togglePlayPause(
      _videoPlayerController,
      _isPlaying,
      () => setState(() => _showControls = true),
      _startHideControlsTimer,
    );
  }

  void _toggleFullscreen() {
    VideoMethods.toggleFullscreen(
      _isFullscreen,
      (isFullscreen) => setState(() => _isFullscreen = isFullscreen),
    );
  }

  void _onTapVideo() {
    VideoMethods.onVideoTap(
      _showControls,
      (showControls) => setState(() => _showControls = showControls),
      _startHideControlsTimer,
    );
  }

  @override
  void dispose() {
    VideoMethods.disposeVideo(_videoPlayerController);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _isFullscreen
          ? null
          : AppBar(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              title: const Text(
                'Tutorial Penggunaan',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.of(context).pop(),
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    _isFullscreen ? Icons.fullscreen_exit : Icons.fullscreen,
                  ),
                  onPressed: _toggleFullscreen,
                ),
              ],
            ),
      body: SafeArea(
        child: GestureDetector(
          onTap: _onTapVideo,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Video Player
              VideoPlayerContainer(
                controller: _videoPlayerController,
                isInitialized: _isInitialized,
              ),

              // Play/Pause Overlay
              if (_isInitialized && !_isPlaying)
                PlayPauseOverlay(
                  isPlaying: _isPlaying,
                  onPressed: _togglePlayPause,
                ),

              // Controls Overlay
              if (_showControls && _isInitialized)
                VideoControlsOverlay(
                  controller: _videoPlayerController,
                  isPlaying: _isPlaying,
                  isFullscreen: _isFullscreen,
                  onPlayPausePressed: _togglePlayPause,
                  onFullscreenPressed: _toggleFullscreen,
                ),

              // Tap to show controls hint
              if (!_showControls && _isInitialized && _isPlaying)
                const TapHintOverlay(),
            ],
          ),
        ),
      ),
    );
  }
}