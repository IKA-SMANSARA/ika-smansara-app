import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/category_document.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/pages/home_page/methods/campaign_list.dart';
import 'package:ika_smansara/presentation/pages/home_page/methods/carousel_images.dart';
import 'package:ika_smansara/presentation/pages/home_page/methods/category_list.dart';
import 'package:ika_smansara/presentation/pages/home_page/methods/header_image_logo.dart';
import 'package:ika_smansara/presentation/providers/campaign/get_new_campaigns_list_provider.dart';
import 'package:ika_smansara/presentation/providers/carousel/get_list_carousels_provider.dart';
import 'package:ika_smansara/presentation/providers/category/get_list_category_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:video_player/video_player.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset(
      'assets/images/tutorial.mp4',
    )..initialize().then((_) {
        _videoPlayerController.play();
      });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Listen to user authentication changes
    ref.listen(
      userDataProvider,
      (previous, next) {
        if (previous != null && next is AsyncData && next.value == null) {
          ref.read(routerProvider).goNamed('login');
        } else if (next is AsyncError) {
          context.showSnackBar(
            next.error.toString(),
          );
        }
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Beranda'),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Selamat Datang',
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF104993),
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Temukan kampanye yang ingin Anda dukung',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.grey[600],
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

              // Content sections would go here
              // For now, just show a simple message
              Container(
                padding: const EdgeInsets.all(20),
                child: const Center(
                  child: Text(
                    'Konten beranda akan ditampilkan di sini',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
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
}