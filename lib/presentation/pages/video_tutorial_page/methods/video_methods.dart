import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class VideoMethods {
  static void initializeVideo(
    VideoPlayerController controller,
    VoidCallback onInitialized,
  ) {
    controller.initialize().then((_) {
      onInitialized();
    });

    controller.setLooping(true);
  }

  static void setupVideoListener(
    VideoPlayerController controller,
    void Function(bool) onPlayingChanged,
  ) {
    controller.addListener(() {
      onPlayingChanged(controller.value.isPlaying);
    });
  }

  static void startHideControlsTimer(
    bool isPlaying,
    void Function() onHideControls,
  ) {
    Future.delayed(const Duration(seconds: 3), () {
      if (isPlaying) {
        onHideControls();
      }
    });
  }

  static void togglePlayPause(
    VideoPlayerController controller,
    bool isPlaying,
    VoidCallback onControlsShown,
    void Function() startTimer,
  ) {
    if (controller.value.isPlaying) {
      controller.pause();
    } else {
      controller.play();
    }
    onControlsShown();
    startTimer();
  }

  static void toggleFullscreen(
    bool isFullscreen,
    void Function(bool) onFullscreenChanged,
  ) {
    final newFullscreenState = !isFullscreen;
    onFullscreenChanged(newFullscreenState);

    if (newFullscreenState) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    } else {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: SystemUiOverlay.values);
    }
  }

  static void onVideoTap(
    bool showControls,
    void Function(bool) onControlsChanged,
    void Function() startTimer,
  ) {
    final newShowControls = !showControls;
    onControlsChanged(newShowControls);

    if (newShowControls) {
      startTimer();
    }
  }

  static void disposeVideo(VideoPlayerController controller) {
    controller.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }
}