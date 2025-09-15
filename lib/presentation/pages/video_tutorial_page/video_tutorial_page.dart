import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoTutorialPage extends StatefulWidget {
  const VideoTutorialPage({super.key});

  @override
  State<VideoTutorialPage> createState() => _VideoTutorialPageState();
}

class _VideoTutorialPageState extends State<VideoTutorialPage> {
  late YoutubePlayerController _youtubePlayerController;
  bool _isPlaying = false;
  bool _showControls = true;
  bool _isFullscreen = false;
  bool _hasInternetConnection = true;
  final Connectivity _connectivity = Connectivity();

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
          onTap: _hasInternetConnection ? _onTapVideo : null,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Video Player or No Internet Message
              Container(
                color: Colors.black,
                child: _hasInternetConnection
                    ? YoutubePlayer(
                        controller: _youtubePlayerController,
                        showVideoProgressIndicator: true,
                        progressIndicatorColor: const Color(0xFF104993),
                        progressColors: const ProgressBarColors(
                          playedColor: Color(0xFF104993),
                          handleColor: Color(0xFF104993),
                        ),
                        onReady: () {
                          // Video is ready to play
                        },
                      )
                    : const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.wifi_off,
                              color: Colors.white,
                              size: 80,
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Tidak ada koneksi internet',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Periksa koneksi internet Anda dan coba lagi',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
              ),



              // Play/Pause Overlay
              if (_hasInternetConnection && !_isPlaying)
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black54,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    iconSize: 80,
                    icon: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                    onPressed: _togglePlayPause,
                  ),
                ),

              // Controls Overlay
              if (_hasInternetConnection && _showControls)
                Positioned(
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
                            _isPlaying ? Icons.pause : Icons.play_arrow,
                            color: Colors.white,
                            size: 32,
                          ),
                          onPressed: _togglePlayPause,
                        ),

                        // Progress Bar (YouTube player handles this internally)
                        Expanded(
                          child: Container(), // Placeholder for layout
                        ),

                        // Fullscreen Button
                        IconButton(
                          icon: Icon(
                            _isFullscreen
                                ? Icons.fullscreen_exit
                                : Icons.fullscreen,
                            color: Colors.white,
                          ),
                          onPressed: _toggleFullscreen,
                        ),
                      ],
                    ),
                  ),
                ),

              // Tap to show controls hint
              if (_hasInternetConnection && !_showControls && _isPlaying)
                Positioned(
                  top: 20,
                  right: 20,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Text(
                      'Tap untuk kontrol',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _connectivity.onConnectivityChanged.drain();
    _youtubePlayerController.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    // Reset orientation when leaving
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _initializeConnectivity();
    _initializeVideo();
    _startHideControlsTimer();
    // Set landscape orientation for fullscreen
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  void _initializeConnectivity() {
    // Check initial connectivity
    _checkConnectivity();

    // Listen for connectivity changes
    _connectivity.onConnectivityChanged.listen((List<ConnectivityResult> results) {
      _updateConnectionStatus(results.isNotEmpty ? results.first : ConnectivityResult.none);
    });
  }

  Future<void> _checkConnectivity() async {
    try {
      final results = await _connectivity.checkConnectivity();
      _updateConnectionStatus(results.isNotEmpty ? results.first : ConnectivityResult.none);
    } catch (e) {
      setState(() {
        _hasInternetConnection = false;
      });
    }
  }

  void _updateConnectionStatus(ConnectivityResult result) {
    final hasConnection = result != ConnectivityResult.none;
    if (mounted) {
      setState(() {
        _hasInternetConnection = hasConnection;
      });
    }
  }

  void _initializeVideo() {
    // Extract video ID from YouTube URL
    const videoUrl = 'https://youtu.be/81_i42mJpFY';
    final videoId = YoutubePlayer.convertUrlToId(videoUrl);

    _youtubePlayerController = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: true, // Auto play when opened
        mute: false,
        loop: true,
        forceHD: true,
        hideControls: false,
      ),
    );

    _youtubePlayerController.addListener(() {
      if (mounted) {
        setState(() {
          _isPlaying = _youtubePlayerController.value.isPlaying;
        });
      }
    });

    // Enter fullscreen mode after initialization
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _enterFullscreenMode();
    });
  }

  void _onTapVideo() {
    setState(() {
      _showControls = !_showControls;
      if (_showControls) {
        _startHideControlsTimer();
      }
    });
  }

  void _startHideControlsTimer() {
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted && _isPlaying) {
        setState(() {
          _showControls = false;
        });
      }
    });
  }

  void _enterFullscreenMode() {
    setState(() {
      _isFullscreen = true;
    });
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  void _toggleFullscreen() {
    setState(() {
      _isFullscreen = !_isFullscreen;
      if (_isFullscreen) {
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
      } else {
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
            overlays: SystemUiOverlay.values);
      }
    });
  }

  void _togglePlayPause() {
    setState(() {
      if (_isPlaying) {
        _youtubePlayerController.pause();
      } else {
        _youtubePlayerController.play();
      }
      _showControls = true;
      _startHideControlsTimer();
    });
  }
}

